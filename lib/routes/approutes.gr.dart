// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:moolwmsstore/View/Admin/dmsDashboard.dart' as _i1;
import 'package:moolwmsstore/View/Admin/GMSDashboard.dart' as _i2;
import 'package:moolwmsstore/View/auth/login.dart' as _i3;
import 'package:moolwmsstore/View/auth/selectUsage.dart' as _i8;
import 'package:moolwmsstore/View/auth/signUp.dart' as _i9;
import 'package:moolwmsstore/View/auth/splash.dart' as _i10;
import 'package:moolwmsstore/View/auth/verifyOtp.dart' as _i11;
import 'package:moolwmsstore/View/base/mobileWebBody.dart' as _i7;
import 'package:moolwmsstore/View/GMS/Material/MaterialInward.dart' as _i5;
import 'package:moolwmsstore/View/GMS/Material/MaterialPage.dart' as _i6;
import 'package:moolwmsstore/View/Walkthrough/walkThrough.dart' as _i12;
import 'package:moolwmsstore/View/webBase/loginWebBody.dart' as _i4;

abstract class $AppRouter extends _i13.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    DmsDashboardRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DmsDashboard(),
      );
    },
    GMSDashboardRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.GMSDashboard(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Login(),
      );
    },
    LoginWebBodyRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginWebBody(),
      );
    },
    MaterialInwardRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MaterialInward(),
      );
    },
    MaterialPageBodyRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MaterialPageBody(),
      );
    },
    MaterialPageInOutRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MaterialPageInOut(),
      );
    },
    MobileWebBodyRoute.name: (routeData) {
      final args = routeData.argsAs<MobileWebBodyRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.MobileWebBody(
          key: args.key,
          body: args.body,
          floatingActionButton: args.floatingActionButton,
          appBarMobile: args.appBarMobile,
          appBarWeb: args.appBarWeb,
        ),
      );
    },
    SelectUsageRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SelectUsage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SignUp(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.Splash(),
      );
    },
    VerifyOtpRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.VerifyOtp(),
      );
    },
    WalkThroughRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.WalkThrough(),
      );
    },
  };
}

/// generated route for
/// [_i1.DmsDashboard]
class DmsDashboardRoute extends _i13.PageRouteInfo<void> {
  const DmsDashboardRoute({List<_i13.PageRouteInfo>? children})
      : super(
          DmsDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DmsDashboardRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i2.GMSDashboard]
class GMSDashboardRoute extends _i13.PageRouteInfo<void> {
  const GMSDashboardRoute({List<_i13.PageRouteInfo>? children})
      : super(
          GMSDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'GMSDashboardRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Login]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute({List<_i13.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginWebBody]
class LoginWebBodyRoute extends _i13.PageRouteInfo<void> {
  const LoginWebBodyRoute({List<_i13.PageRouteInfo>? children})
      : super(
          LoginWebBodyRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginWebBodyRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MaterialInward]
class MaterialInwardRoute extends _i13.PageRouteInfo<void> {
  const MaterialInwardRoute({List<_i13.PageRouteInfo>? children})
      : super(
          MaterialInwardRoute.name,
          initialChildren: children,
        );

  static const String name = 'MaterialInwardRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MaterialPageBody]
class MaterialPageBodyRoute extends _i13.PageRouteInfo<void> {
  const MaterialPageBodyRoute({List<_i13.PageRouteInfo>? children})
      : super(
          MaterialPageBodyRoute.name,
          initialChildren: children,
        );

  static const String name = 'MaterialPageBodyRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MaterialPageInOut]
class MaterialPageInOutRoute extends _i13.PageRouteInfo<void> {
  const MaterialPageInOutRoute({List<_i13.PageRouteInfo>? children})
      : super(
          MaterialPageInOutRoute.name,
          initialChildren: children,
        );

  static const String name = 'MaterialPageInOutRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MobileWebBody]
class MobileWebBodyRoute extends _i13.PageRouteInfo<MobileWebBodyRouteArgs> {
  MobileWebBodyRoute({
    _i14.Key? key,
    required List<_i14.Widget> body,
    _i14.Widget? floatingActionButton,
    _i14.PreferredSizeWidget? appBarMobile,
    _i14.PreferredSizeWidget? appBarWeb,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          MobileWebBodyRoute.name,
          args: MobileWebBodyRouteArgs(
            key: key,
            body: body,
            floatingActionButton: floatingActionButton,
            appBarMobile: appBarMobile,
            appBarWeb: appBarWeb,
          ),
          initialChildren: children,
        );

  static const String name = 'MobileWebBodyRoute';

  static const _i13.PageInfo<MobileWebBodyRouteArgs> page =
      _i13.PageInfo<MobileWebBodyRouteArgs>(name);
}

class MobileWebBodyRouteArgs {
  const MobileWebBodyRouteArgs({
    this.key,
    required this.body,
    this.floatingActionButton,
    this.appBarMobile,
    this.appBarWeb,
  });

  final _i14.Key? key;

  final List<_i14.Widget> body;

  final _i14.Widget? floatingActionButton;

  final _i14.PreferredSizeWidget? appBarMobile;

  final _i14.PreferredSizeWidget? appBarWeb;

  @override
  String toString() {
    return 'MobileWebBodyRouteArgs{key: $key, body: $body, floatingActionButton: $floatingActionButton, appBarMobile: $appBarMobile, appBarWeb: $appBarWeb}';
  }
}

/// generated route for
/// [_i8.SelectUsage]
class SelectUsageRoute extends _i13.PageRouteInfo<void> {
  const SelectUsageRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SelectUsageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectUsageRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SignUp]
class SignUpRoute extends _i13.PageRouteInfo<void> {
  const SignUpRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.Splash]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i11.VerifyOtp]
class VerifyOtpRoute extends _i13.PageRouteInfo<void> {
  const VerifyOtpRoute({List<_i13.PageRouteInfo>? children})
      : super(
          VerifyOtpRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerifyOtpRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.WalkThrough]
class WalkThroughRoute extends _i13.PageRouteInfo<void> {
  const WalkThroughRoute({List<_i13.PageRouteInfo>? children})
      : super(
          WalkThroughRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalkThroughRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
