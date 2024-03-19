import 'package:auto_route/auto_route.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';

// import 'approutes.gr.dart';

// @AutoRouterConfig(replaceInRouteName: "Route")
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
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
}
