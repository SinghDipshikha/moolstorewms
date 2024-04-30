import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlantManagerRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  PlantManagerRepo({required this.sharedPreferences, required this.apiClient});
}
