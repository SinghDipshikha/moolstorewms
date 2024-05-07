import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  String? fileUrl;
  late Dio _dio;

  @override
  void initState() {
    super.initState();

    _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           ElevatedButton(
            onPressed: (){

            },
            child: Text('Upload File'),
          ),
          if (fileUrl != null)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Uploaded File URL: $fileUrl',
                style: const TextStyle(fontSize: 16),
              ),
            ),
        ],
      ),
    );
  }
}
