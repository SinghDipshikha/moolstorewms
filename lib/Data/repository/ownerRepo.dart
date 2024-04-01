
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OwnerRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  OwnerRepo({required this.sharedPreferences, required this.apiClient});



  //owner/addEmployeeByOwner

  
  addEmployeeByOwner(){

    apiClient.postData("owner/addEmployeeByOwner", {});
  }
}