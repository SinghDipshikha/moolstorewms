import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HrRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  HrRepo({required this.sharedPreferences, required this.apiClient});
}
