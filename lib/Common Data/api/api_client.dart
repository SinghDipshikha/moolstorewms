import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart' as g;
// import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:crypto/crypto.dart';
class ApiClient extends g.GetxService {
  final Dio _dio = Dio();


  void initAdapter() {
  const String fingerprint = 'ee5ce1dfa7a53657c545c62b65802e4272878dabd65c0aadcf85783ebb0b4d5c';
  _dio.httpClientAdapter = IOHttpClientAdapter(
    createHttpClient: () {
     
      final HttpClient client = HttpClient(context: SecurityContext(withTrustedRoots: false));
     
      client.badCertificateCallback = (cert, host, port) => true;
      return client;
    },
    validateCertificate: (cert, host, port) {
      // Check that the cert fingerprint matches the one we expect.
      // We definitely require _some_ certificate.
      if (cert == null) {
        return false;
      }
      // Validate it any way you want. Here we only check that
      // the fingerprint matches the OpenSSL SHA256.
      return fingerprint == sha256.convert(cert.der).toString();
    },
  );
}

  final String? appBaseUrl;
  final SharedPreferences sharedPreferences;
  static const String noInternetMessage =
      'Connection to API server failed due to internet connection';
  final int timeoutInSeconds = 30;

  String? token;
  late Map<String, String> _mainHeaders;

  ApiClient({this.appBaseUrl, required this.sharedPreferences}) {
    token = sharedPreferences.getString(AppConstants.token);

    updateHeader();
    _dio.interceptors.add(PrettyDioLogger(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
    ));
  }

  void updateHeader() {
    _mainHeaders = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': '${sharedPreferences.getString(AppConstants.token)}',
      'org-code': '${sharedPreferences.getString(AppConstants.orgCode)}'
    };
  }

  Future<Response> getData(String uri,
      {Map<String, dynamic>? query, Map<String, String>? headers}) async {
    try {
      Response response0 = await _dio
          .get(appBaseUrl! + uri,
              options: Options(
                headers: headers ?? _mainHeaders,
              ))
          .timeout(Duration(seconds: timeoutInSeconds));
      Response response = handleResponse(response0);

      return response;
    } catch (e) {
      Snacks.redSnack("Something went wrong, Check Internet connection");
      return Response(
          statusCode: 1,
          statusMessage: noInternetMessage,
          requestOptions: RequestOptions());
    }
  }

  Future<Response> postData(String uri, dynamic body,
      {Map<String, String>? headers, bool passhandlecheck = false}) async {
    try {
      Response response = await _dio
          .post(appBaseUrl! + uri,
              data: body,
              options: Options(
                headers: headers ?? _mainHeaders,
              ))
          .timeout(Duration(seconds: timeoutInSeconds));
      return passhandlecheck ? response : handleResponse(response);
    } catch (e) {
      if (e is DioException) {
        e.message;
        Snacks.redSnack(e.message ?? "Something is wrong");
      } else {
        Snacks.redSnack("Something is wrong $e");
      }
    

      return Response(
          data: {"message": "error hardcoded by jass"},
          statusCode: 1,
          statusMessage: noInternetMessage,
          requestOptions: RequestOptions());
    }
  }

  // Future<Response> postMultipartData(
  //     String? uri, Map<String, String> body, List<MultipartBody> multipartBody,
  //     {Map<String, String>? headers}) async {
  //   try {
  //     Logger().i('====> API Call: $uri\nToken: $token');
  //     Logger().i('====> API Body: $body');

  //     http.MultipartRequest request =
  //         http.MultipartRequest('POST', Uri.parse(appBaseUrl! + uri!));
  //     request.headers.addAll(headers ?? _mainHeaders);
  //     for (MultipartBody multipart in multipartBody) {
  //       if (kIsWeb) {
  //         Uint8List list = await multipart.file.readAsBytes();
  //         http.MultipartFile part = http.MultipartFile(
  //           multipart.key,
  //           multipart.file.readAsBytes().asStream(),
  //           list.length,
  //           filename: multipart.file.path,
  //         );
  //         request.files.add(part);
  //       } else {
  //         File file = File(multipart.file.path);
  //         request.files.add(http.MultipartFile(
  //           multipart.key,
  //           file.readAsBytes().asStream(),
  //           file.lengthSync(),
  //           filename: file.path.split('/').last,
  //         ));
  //       }
  //     }
  //     request.fields.addAll(body);
  //     http.Response response =
  //         await http.Response.fromStream(await request.send());
  //     return handleResponse(response);
  //   } catch (e) {
  //     return const Response(statusCode: 1, statusText: noInternetMessage);
  //   }
  // }

  // Future<Response> putData(String? uri, dynamic body,
  //     {Map<String, String>? headers}) async {
  //   try {
  //     Logger().i('====> API Call: $uri\nToken: $token');
  //     Logger().i('====> API Body: $body');

  //     http.Response response = await http
  //         .put(
  //           Uri.parse(appBaseUrl! + uri!),
  //           body: jsonEncode(body),
  //           headers: headers ?? _mainHeaders,
  //         )
  //         .timeout(Duration(seconds: timeoutInSeconds));
  //     return handleResponse(response);
  //   } catch (e) {
  //     return  Response(statusCode: 1, statusText: noInternetMessage);
  //   }
  // }

  // Future<Response> deleteData(String? uri,
  //     {Map<String, String>? headers}) async {
  //   try {
  //     Logger().i('====> API Call: $uri\nToken: $token');

  //     http.Response response = await http
  //         .delete(
  //           Uri.parse(appBaseUrl! + uri!),
  //           headers: headers ?? _mainHeaders,
  //         )
  //         .timeout(Duration(seconds: timeoutInSeconds));
  //     return handleResponse(response);
  //   } catch (e) {
  //     return  Response(statusCode: 1, statusText: noInternetMessage);
  //   }
  // }

  Future<String?> uploadImage(XFile file) async {
    String fileName = file.path.split('/').last;
    FormData formData = FormData.fromMap({
      "file": MultipartFile.fromBytes(await file.readAsBytes(),
          filename: fileName.trim()),
    });
    Response value =
        await _dio.post("${appBaseUrl!}file/upload", data: formData);
    if (value.data["message"] == "Successfully uploaded 1 files!") {
      Logger().i(value.data["files"][0]["location"]);
      return value.data["files"][0]["location"];
    } else {
      return null;
    }
  }

  Response handleResponse(Response response) {
    dynamic body;
    Response response0 = Response(
        data: body ?? response.data,
        headers: response.headers,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        requestOptions: RequestOptions());
    if (response0.statusCode == 200 && response0.data != null) {
      if (response0.data["status"] == false) {
        Snacks.redSnack(response0.data["message"]);
      } else {
        // Snacks.greenSnack(response0.data["message"]);
      }
    }
    if (response0.statusCode != 200 &&
        response0.data != null &&
        response0.data is! String) {
      if (response0.statusMessage != null) {
        Snacks.redSnack(response0.data["message"] ?? noInternetMessage);
      }
    }
    if (response0.statusCode != 200 && response0.data == null) {
      Snacks.redSnack(noInternetMessage);
      response0 = Response(
          data: {"message": "error hardcoded by jass"},
          statusCode: 0,
          statusMessage: noInternetMessage,
          requestOptions: RequestOptions());
    }
    return response0;
  }

  final Logger _logger = Logger();

  Future<void> uploadFile() async {
    var file = await FilePicker.platform.pickFiles();

    if (file != null) {
      FormData formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(file.files.single.path!),
      });

      try {
        _dio
            .post(
              'http://65.1.152.63:3000/file/upload',
              data: formData,
            )
            .then((value) {});
      } catch (e) {
        print('Error uploading file: $e');
      }
    }
  }
}

class MultipartBody {
  String key;
  XFile file;

  MultipartBody(this.key, this.file);
}
