import 'package:auto_route/auto_route.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  List<AutoRoute> productionRoutes = [
    AutoRoute(initial: true, page: AuthBody.page, children: [
      AutoRoute(page: Splash.page, initial: true),
      AutoRoute(
        page: Chooselanguage.page,
      ),
      AutoRoute(
        page: SignInUp.page,
      ),
      AutoRoute(
        page: OrganisationCode.page,
      ),
      AutoRoute(
        page: PhoneSign.page,
      ),
    ]),
    AutoRoute(page: SecurityGuard.page, children: [


      
      AutoRoute(page: SecurityGuardDashBoard.page, initial: true),
     
    ]),
    AutoRoute(page: OwnerBody.page, children: [
      AutoRoute(page: OwnerDashboard.page, initial: true),
      AutoRoute(
        page: Chooselanguage.page,
      ),
      AutoRoute(
        page: SignInUp.page,
      ),
      AutoRoute(
        page: OrganisationCode.page,
      ),
      AutoRoute(
        page: PhoneSign.page,
      ),
    ]),
  ];

  @override
  List<AutoRoute> get routes => productionRoutes;
}

// class NameGuard extends AutoRouteGuard {
//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) {
//     Logger().i(router.currentPath);

//     resolver.next(true);
//     Get.find<UiController>().changeTitle(router.current.name);
//   }
// }
