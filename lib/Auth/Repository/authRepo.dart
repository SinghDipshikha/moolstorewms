import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  AuthRepo({required this.sharedPreferences, required this.apiClient});
}
