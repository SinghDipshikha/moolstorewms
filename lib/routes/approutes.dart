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
        AutoRoute(
            page: MobileWebBodyRoute.page,
            children: [AutoRoute(page: GMSDashboardRoute.page, initial: true)]),
        AutoRoute(page: LoginWebBodyRoute.page, children: [
          AutoRoute(page: WalkThroughRoute.page, initial: isMobile()),
          AutoRoute(
            page: LoginRoute.page,
            initial: !isMobile(),
          )
        ]),
        AutoRoute(
          page: SelectUsageRoute.page,
        ),
        AutoRoute(
          page: TestRoute.page,
        ),
      ];
}
