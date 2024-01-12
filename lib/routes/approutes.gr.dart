// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;
import 'package:moolwmsstore/View/Admin/DmsDashboard.dart' as _i1;
import 'package:moolwmsstore/View/Admin/GMSDashboard.dart' as _i2;
import 'package:moolwmsstore/View/DMS/MaterialInward.dart' as _i5;
import 'package:moolwmsstore/View/GMS/Material/MaterialPage.dart' as _i6;
import 'package:moolwmsstore/View/Walkthrough/walkThrough.dart' as _i13;
import 'package:moolwmsstore/View/auth/login.dart' as _i3;
import 'package:moolwmsstore/View/auth/selectUsage.dart' as _i8;
import 'package:moolwmsstore/View/auth/signUp.dart' as _i9;
import 'package:moolwmsstore/View/auth/splash.dart' as _i10;
import 'package:moolwmsstore/View/auth/verifyOtp.dart' as _i12;
import 'package:moolwmsstore/View/base/mobileWebBody.dart' as _i7;
import 'package:moolwmsstore/View/webBase/loginWebBody.dart' as _i4;
import 'package:moolwmsstore/test.dart' as _i11;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    DmsDashboardRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DmsDashboard(),
      );
    },
    DmsDashboardBodyRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DmsDashboardBody(),
      );
    },
    GMSDashboardRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.GMSDashboard(),
      );
    },
    GMSDashboardBodyRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.GMSDashboardBody(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Login(),
      );
    },
    LoginWebBodyRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginWebBody(),
      );
    },
    MaterialInwardRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MaterialInward(),
      );
    },
    MaterialPageBodyRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MaterialPageBody(),
      );
    },
    MobileWebBodyRoute.name: (routeData) {
      final args = routeData.argsAs<MobileWebBodyRouteArgs>(
          orElse: () => const MobileWebBodyRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.MobileWebBody(
          key: args.key,
          floatingActionButton: args.floatingActionButton,
          appBarMobile: args.appBarMobile,
          appBarWeb: args.appBarWeb,
        ),
      );
    },
    SelectUsageRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SelectUsage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SignUp(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.Splash(),
      );
    },
    TesttextRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.Testtext(),
      );
    },
    VerifyOtpRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.VerifyOtp(),
      );
    },
    WalkThroughRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.WalkThrough(),
      );
    },
  };
}

/// generated route for
/// [_i1.DmsDashboard]
class DmsDashboardRoute extends _i14.PageRouteInfo<void> {
  const DmsDashboardRoute({List<_i14.PageRouteInfo>? children})
      : super(
          DmsDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DmsDashboardRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i1.DmsDashboardBody]
class DmsDashboardBodyRoute extends _i14.PageRouteInfo<void> {
  const DmsDashboardBodyRoute({List<_i14.PageRouteInfo>? children})
      : super(
          DmsDashboardBodyRoute.name,
          initialChildren: children,
        );

  static const String name = 'DmsDashboardBodyRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i2.GMSDashboard]
class GMSDashboardRoute extends _i14.PageRouteInfo<void> {
  const GMSDashboardRoute({List<_i14.PageRouteInfo>? children})
      : super(
          GMSDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'GMSDashboardRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i2.GMSDashboardBody]
class GMSDashboardBodyRoute extends _i14.PageRouteInfo<void> {
  const GMSDashboardBodyRoute({List<_i14.PageRouteInfo>? children})
      : super(
          GMSDashboardBodyRoute.name,
          initialChildren: children,
        );

  static const String name = 'GMSDashboardBodyRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Login]
class LoginRoute extends _i14.PageRouteInfo<void> {
  const LoginRoute({List<_i14.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginWebBody]
class LoginWebBodyRoute extends _i14.PageRouteInfo<void> {
  const LoginWebBodyRoute({List<_i14.PageRouteInfo>? children})
      : super(
          LoginWebBodyRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginWebBodyRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MaterialInward]
class MaterialInwardRoute extends _i14.PageRouteInfo<void> {
  const MaterialInwardRoute({List<_i14.PageRouteInfo>? children})
      : super(
          MaterialInwardRoute.name,
          initialChildren: children,
        );

  static const String name = 'MaterialInwardRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MaterialPageBody]
class MaterialPageBodyRoute extends _i14.PageRouteInfo<void> {
  const MaterialPageBodyRoute({List<_i14.PageRouteInfo>? children})
      : super(
          MaterialPageBodyRoute.name,
          initialChildren: children,
        );

  static const String name = 'MaterialPageBodyRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MobileWebBody]
class MobileWebBodyRoute extends _i14.PageRouteInfo<MobileWebBodyRouteArgs> {
  MobileWebBodyRoute({
    _i15.Key? key,
    _i15.Widget? floatingActionButton,
    _i15.PreferredSizeWidget? appBarMobile,
    _i15.PreferredSizeWidget? appBarWeb,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          MobileWebBodyRoute.name,
          args: MobileWebBodyRouteArgs(
            key: key,
            floatingActionButton: floatingActionButton,
            appBarMobile: appBarMobile,
            appBarWeb: appBarWeb,
          ),
          initialChildren: children,
        );

  static const String name = 'MobileWebBodyRoute';

  static const _i14.PageInfo<MobileWebBodyRouteArgs> page =
      _i14.PageInfo<MobileWebBodyRouteArgs>(name);
}

class MobileWebBodyRouteArgs {
  const MobileWebBodyRouteArgs({
    this.key,
    this.floatingActionButton,
    this.appBarMobile,
    this.appBarWeb,
  });

  final _i15.Key? key;

  final _i15.Widget? floatingActionButton;

  final _i15.PreferredSizeWidget? appBarMobile;

  final _i15.PreferredSizeWidget? appBarWeb;

  @override
  String toString() {
    return 'MobileWebBodyRouteArgs{key: $key, floatingActionButton: $floatingActionButton, appBarMobile: $appBarMobile, appBarWeb: $appBarWeb}';
  }
}

/// generated route for
/// [_i8.SelectUsage]
class SelectUsageRoute extends _i14.PageRouteInfo<void> {
  const SelectUsageRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SelectUsageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectUsageRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SignUp]
class SignUpRoute extends _i14.PageRouteInfo<void> {
  const SignUpRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i10.Splash]
class SplashRoute extends _i14.PageRouteInfo<void> {
  const SplashRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i11.Testtext]
class TesttextRoute extends _i14.PageRouteInfo<void> {
  const TesttextRoute({List<_i14.PageRouteInfo>? children})
      : super(
          TesttextRoute.name,
          initialChildren: children,
        );

  static const String name = 'TesttextRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i12.VerifyOtp]
class VerifyOtpRoute extends _i14.PageRouteInfo<void> {
  const VerifyOtpRoute({List<_i14.PageRouteInfo>? children})
      : super(
          VerifyOtpRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerifyOtpRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i13.WalkThrough]
class WalkThroughRoute extends _i14.PageRouteInfo<void> {
  const WalkThroughRoute({List<_i14.PageRouteInfo>? children})
      : super(
          WalkThroughRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalkThroughRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}
