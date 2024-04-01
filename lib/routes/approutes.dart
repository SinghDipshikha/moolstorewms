import 'package:auto_route/auto_route.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Controller/uiController.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';

// import 'approutes.gr.dart';

// @AutoRouterConfig(replaceInRouteName: "Route")
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  List<AutoRoute> dipikshaRoutes = [
    AutoRoute(initial: true, page: TestRoutes.page, children: [
      AutoRoute(
        initial: true,
        page: TestRoutespage.page,
      ),
      AutoRoute(
        page: AddEmployeePersonalDetails.page,
      ),
      AutoRoute(
        page: AddEmployeeContactDetails.page,
      ),
      AutoRoute(
        page: AddEmployeeCareerDetails.page,
      ),
      AutoRoute(
        page: AddEmployeeEducationQualificationDetails.page,
      ),
      AutoRoute(
        page: AddEmployeeReferralDetails.page,
      ),
      AutoRoute(
        page: AddEmployeeBankDetails.page,
      ),
      AutoRoute(
        page: AddEmployeeDocumentsDetails.page,
      ),
    ]),
  ];
  List<AutoRoute> testroutes = [
    //Auth
    // AutoRoute(initial: true, page: TestRoutes.page, children: [
    //   AutoRoute(
    //     initial: true,
    //     page: TestRoutespage.page,
    //   ),
    // ]),
    AutoRoute(page: Body.page, initial: true, children: [
      AutoRoute(
        initial: true,
        page: TestRoutespage.page,
      ),
      AutoRoute(
          title: (context, data) {
            Get.find<UiController>().changeTitle("Owner Dashboard");
            return "Owner Dashboard";
          },
          page: OwnerDashboard.page,
          guards: const []),

      AutoRoute(
          title: (context, data) {
            Get.find<UiController>().changeTitle("Add Warehouse");
            return "Add Warehouse";
          },
          page: AddWarehouse.page,
          guards: const []),
      AutoRoute(
          title: (context, data) {
            Get.find<UiController>().changeTitle("Warehouse List");
            return "Warehouse  List";
          },
          page: WarehouseList.page,
          guards: const []),
      AutoRoute(page: ViewWarehouseDetails.page, guards: const []),
      AutoRoute(page: PoList.page, guards: const []),
      //Dock Supervisor
      AutoRoute(
        page: ChamberList.page,
      ),
      AutoRoute(
        page: AddChamber.page,
      ),
      AutoRoute(
        page: ChamberView.page,
      ),
      //Plant Manager
      AutoRoute(
        page: AssetsList.page,
      ),
      AutoRoute(
        page: AssetEntry.page,
      ),
      //HR
    ]),
    AutoRoute(
      page: Chooselanguage.page,
    ),
    AutoRoute(
      page: PhoneSign.page,
    ),
    AutoRoute(
      page: OtpRoute.page,
    ),
    AutoRoute(
      page: SelectRole.page,
    ),
    AutoRoute(
      page: Signup.page,
    ),
    AutoRoute(
      page: Welcome.page,
    ),

    AutoRoute(
      page: OwnerDashboard.page,
    ),

    AutoRoute(
      page: AddWarehouse.page,
    ),
    AutoRoute(
      page: WarehouseList.page,
    ),
    AutoRoute(
      page: ViewWarehouseDetails.page,
    ),
    //Dock Supervisor
    AutoRoute(
      page: ChamberList.page,
    ),
    AutoRoute(
      page: AddChamber.page,
    ),
    AutoRoute(
      page: ChamberView.page,
    ),
    //Plant Manager
    AutoRoute(
      page: AssetsList.page,
    ),
    AutoRoute(
      page: AssetEntry.page,
    ),
    //HR
    // AutoRoute(
    //   page: AddSecurityGuardRoute.page,
    // ),
  ];

  List<AutoRoute> myroutes = [
    //Auth
    AutoRoute(
      page: Splash.page,
    ),
    AutoRoute(initial: true, page: Body.page, children: [
      AutoRoute(
        page: AssetsList.page,
        initial: true,
      ),
      AutoRoute(
        page: AssetEntry.page,
      ),
      AutoRoute(
        page: ChamberView.page,
      ),
      AutoRoute(
        page: ChamberView.page,
      ),
      AutoRoute(page: ChamberView.page),
    ]),
  ];

  @override
  List<AutoRoute> get routes => dipikshaRoutes;
}

class NameGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    Logger().i(router.currentPath);

    resolver.next(true);
    Get.find<UiController>().changeTitle(router.current.name);
  }
}
