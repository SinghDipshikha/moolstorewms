Modules Wise Documnentation  
 General Tips :

    1.Controller here are basically GetxController , which are handling navigation and logic of applictaion .
    2.Controller should be initialized  fisrt then used in ui or in any other controller , otherwise it will throw controller null exception and u will be doomed while finding it.
     lib/helper/get_di.dart , initially  AuthController , ApiClient , SharedPreferences and Hive adapters have been put them in memory in this file , because these are not initialized by any other controller.
    3.Every Controller use apiClient for api hits , which is basically object of Api calss in which logic is handeled for REST methods.
     lib/Common Data/api/api_client.dart.
    4. All api hits should be in modules respective repositories .
       For eg . AuthController have authRepo , first we put auth repo object in memory by Get.put() method then pass it as named parameter in auth controller.
    5.Navigations should be done from controller .
     Every roles have their own navsgation acheived through nested navigation
       For eg . Sales ,  I have base of it as Sales.dart in Getnavigator is there and ive assigned it id(6) in lib/utils/globals.dart
                if i want to go to any screens it sales module it woulble be like Get.to(Screen() , id : salesnavigationkey) , so that other modules navigation wont be  distributed



1.  Authentication
