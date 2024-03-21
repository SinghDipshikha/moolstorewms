import 'package:auto_route/auto_route.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';

// import 'approutes.gr.dart';

// @AutoRouterConfig(replaceInRouteName: "Route")
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  List<AutoRoute> testroutes = [
    //Auth
    AutoRoute(initial: true, page: TestRoutes.page, children: [
      AutoRoute(
        initial: true,
        page: TestRoutespage.page,
      ),
    ]),
    AutoRoute(
      page: Splash.page,
    ),
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
      guards: [

      ],
    
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
    AutoRoute(
      page: AddSecurityGuardRoute.page,
    ),
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
  List<AutoRoute> get routes => testroutes;
}
