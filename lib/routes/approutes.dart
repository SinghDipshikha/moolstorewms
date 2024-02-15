import 'package:auto_route/auto_route.dart';
import 'package:platform_detector/platform_detector.dart';

import 'approutes.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Route")
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(path: "/", page: MobileWebBodyRoute.page, children: [
           AutoRoute(page: AddEmployeeRoute.page, path: "AddEmployee"),
          AutoRoute(
              initial: true,
              page: OwnerDashboradRoute.page,
              path: "OwnerDashboard",
              children: [
                AutoRoute(page: OwnerDashboardBodyRoute.page, initial: true),
              ]),
          AutoRoute(
              page: GMSDashboardRoute.page,
              path: "GMSDashboard",
              children: [
                AutoRoute(page: GMSDashboardBodyRoute.page, initial: true),
                AutoRoute(page: MaterialPageBodyRoute.page, path: "Material"),
                AutoRoute(page: MaterialInwardRoute.page, path: "MaterialIn"),
              ]),
          AutoRoute(
              page: DmsDashboardRoute.page,
              path: "DMSDashboard",
              // initial: true,
              children: [
                AutoRoute(page: DmsDashboardBodyRoute.page, initial: true),
                AutoRoute(page: MaterialPageBodyRoute.page, path: "Material"),
                AutoRoute(
                    page: MaterialInwardRoute.page, path: "MaterialInward"),
                AutoRoute(page: AssignDockRoute.page, path: "AssignDock"),
                AutoRoute(page: UnloadingRoute.page, path: "Unloading"),
              ]),
        ]),
        AutoRoute(page: LoginWebBodyRoute.page, children: [
          AutoRoute(page: WalkThroughRoute.page, initial: isMobile()),
          AutoRoute(
            page: LoginRoute.page,
            initial: !isMobile(),
          )
        ]),
        AutoRoute(
          page: SignUpRoute.page,
        ),
        AutoRoute(
          page: AddWarehouseRoute.page,
        ),
        AutoRoute(
          page: RefervehicleRoute.page,
        ),
        AutoRoute(
          page: SelectUsageRoute.page,
        ),
        AutoRoute(
          page: TesttextRoute.page,
        ),
      ];
}
