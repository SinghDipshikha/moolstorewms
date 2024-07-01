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
    6.Every Controller have apiclient and sharedprefrence object in its Constrtuctor as named parameter

1.  Authentication

    1.  splash() is called first when our application starts , it checks for user in storage , if it exits , then home screen according to roles , else it goes for siginUp page .
        SignUp is only for owner role , only and only for owner.
        Signup -- Number -- Otp(for just mobile verification) -- signup Form -- welcome
        Signin
        Singnin -- organization code screen (choose customer or employee , currently we don't care ,if suceess set org code in header of api clinet, otherwise whole app fails) -- Number -- Otp(for checking user in database) -- user returned ? Welcome : Shooo
        
