import 'package:auto_route/auto_route.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';

// import 'approutes.gr.dart';

// @AutoRouterConfig(replaceInRouteName: "Route")
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(initial: true, page: Body.page),
      ];
}
