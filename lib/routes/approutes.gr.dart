// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:flutter/material.dart' as _i21;
import 'package:moolwmsstore/test.dart' as _i16;
import 'package:moolwmsstore/View/Admin/dmsDashboard.dart' as _i3;
import 'package:moolwmsstore/View/Admin/GMSDashboard.dart' as _i4;
import 'package:moolwmsstore/View/Admin/OwnerDashboard.dart' as _i10;
import 'package:moolwmsstore/View/auth/addWarehouse.dart' as _i1;
import 'package:moolwmsstore/View/auth/login.dart' as _i5;
import 'package:moolwmsstore/View/auth/ownerOnborad.dart' as _i11;
import 'package:moolwmsstore/View/auth/refervehicle.dart' as _i12;
import 'package:moolwmsstore/View/auth/selectUsage.dart' as _i13;
import 'package:moolwmsstore/View/auth/signUp.dart' as _i14;
import 'package:moolwmsstore/View/auth/splash.dart' as _i15;
import 'package:moolwmsstore/View/auth/verifyOtp.dart' as _i18;
import 'package:moolwmsstore/View/base/mobileWebBody.dart' as _i9;
import 'package:moolwmsstore/View/DMS/AssignDock.dart' as _i2;
import 'package:moolwmsstore/View/DMS/MaterialInward.dart' as _i7;
import 'package:moolwmsstore/View/DMS/unloading.dart' as _i17;
import 'package:moolwmsstore/View/GMS/Material/MaterialPage.dart' as _i8;
import 'package:moolwmsstore/View/Walkthrough/walkThrough.dart' as _i19;
import 'package:moolwmsstore/View/webBase/loginWebBody.dart' as _i6;

abstract class $AppRouter extends _i20.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    AddWarehouseRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddWarehouse(),
      );
    },
    AssignDockRoute.name: (routeData) {
      final args = routeData.argsAs<AssignDockRouteArgs>(
          orElse: () => const AssignDockRouteArgs());
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AssignDock(key: args.key),
      );
    },
    DmsDashboardRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DmsDashboard(),
      );
    },
    DmsDashboardBodyRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DmsDashboardBody(),
      );
    },
    GMSDashboardRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.GMSDashboard(),
      );
    },
    GMSDashboardBodyRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.GMSDashboardBody(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.Login(),
      );
    },
    LoginWebBodyRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoginWebBody(),
      );
    },
    MaterialInwardRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MaterialInward(),
      );
    },
    MaterialPageBodyRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.MaterialPageBody(),
      );
    },
    MobileWebBodyRoute.name: (routeData) {
      final args = routeData.argsAs<MobileWebBodyRouteArgs>(
          orElse: () => const MobileWebBodyRouteArgs());
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.MobileWebBody(
          key: args.key,
          floatingActionButton: args.floatingActionButton,
          appBarMobile: args.appBarMobile,
          appBarWeb: args.appBarWeb,
        ),
      );
    },
    OwnerDashboradRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.OwnerDashborad(),
      );
    },
    OwnerOnboradRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.OwnerOnborad(),
      );
    },
    RefervehicleRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.Refervehicle(),
      );
    },
    SelectUsageRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SelectUsage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SignUp(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.Splash(),
      );
    },
    TesttextRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.Testtext(),
      );
    },
    UnloadingRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.Unloading(),
      );
    },
    VerifyOtpRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.VerifyOtp(),
      );
    },
    WalkThroughRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.WalkThrough(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddWarehouse]
class AddWarehouseRoute extends _i20.PageRouteInfo<void> {
  const AddWarehouseRoute({List<_i20.PageRouteInfo>? children})
      : super(
          AddWarehouseRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddWarehouseRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AssignDock]
class AssignDockRoute extends _i20.PageRouteInfo<AssignDockRouteArgs> {
  AssignDockRoute({
    _i21.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          AssignDockRoute.name,
          args: AssignDockRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AssignDockRoute';

  static const _i20.PageInfo<AssignDockRouteArgs> page =
      _i20.PageInfo<AssignDockRouteArgs>(name);
}

class AssignDockRouteArgs {
  const AssignDockRouteArgs({this.key});

  final _i21.Key? key;

  @override
  String toString() {
    return 'AssignDockRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.DmsDashboard]
class DmsDashboardRoute extends _i20.PageRouteInfo<void> {
  const DmsDashboardRoute({List<_i20.PageRouteInfo>? children})
      : super(
          DmsDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DmsDashboardRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DmsDashboardBody]
class DmsDashboardBodyRoute extends _i20.PageRouteInfo<void> {
  const DmsDashboardBodyRoute({List<_i20.PageRouteInfo>? children})
      : super(
          DmsDashboardBodyRoute.name,
          initialChildren: children,
        );

  static const String name = 'DmsDashboardBodyRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i4.GMSDashboard]
class GMSDashboardRoute extends _i20.PageRouteInfo<void> {
  const GMSDashboardRoute({List<_i20.PageRouteInfo>? children})
      : super(
          GMSDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'GMSDashboardRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i4.GMSDashboardBody]
class GMSDashboardBodyRoute extends _i20.PageRouteInfo<void> {
  const GMSDashboardBodyRoute({List<_i20.PageRouteInfo>? children})
      : super(
          GMSDashboardBodyRoute.name,
          initialChildren: children,
        );

  static const String name = 'GMSDashboardBodyRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i5.Login]
class LoginRoute extends _i20.PageRouteInfo<void> {
  const LoginRoute({List<_i20.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginWebBody]
class LoginWebBodyRoute extends _i20.PageRouteInfo<void> {
  const LoginWebBodyRoute({List<_i20.PageRouteInfo>? children})
      : super(
          LoginWebBodyRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginWebBodyRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MaterialInward]
class MaterialInwardRoute extends _i20.PageRouteInfo<void> {
  const MaterialInwardRoute({List<_i20.PageRouteInfo>? children})
      : super(
          MaterialInwardRoute.name,
          initialChildren: children,
        );

  static const String name = 'MaterialInwardRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i8.MaterialPageBody]
class MaterialPageBodyRoute extends _i20.PageRouteInfo<void> {
  const MaterialPageBodyRoute({List<_i20.PageRouteInfo>? children})
      : super(
          MaterialPageBodyRoute.name,
          initialChildren: children,
        );

  static const String name = 'MaterialPageBodyRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MobileWebBody]
class MobileWebBodyRoute extends _i20.PageRouteInfo<MobileWebBodyRouteArgs> {
  MobileWebBodyRoute({
    _i21.Key? key,
    _i21.Widget? floatingActionButton,
    _i21.PreferredSizeWidget? appBarMobile,
    _i21.PreferredSizeWidget? appBarWeb,
    List<_i20.PageRouteInfo>? children,
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

  static const _i20.PageInfo<MobileWebBodyRouteArgs> page =
      _i20.PageInfo<MobileWebBodyRouteArgs>(name);
}

class MobileWebBodyRouteArgs {
  const MobileWebBodyRouteArgs({
    this.key,
    this.floatingActionButton,
    this.appBarMobile,
    this.appBarWeb,
  });

  final _i21.Key? key;

  final _i21.Widget? floatingActionButton;

  final _i21.PreferredSizeWidget? appBarMobile;

  final _i21.PreferredSizeWidget? appBarWeb;

  @override
  String toString() {
    return 'MobileWebBodyRouteArgs{key: $key, floatingActionButton: $floatingActionButton, appBarMobile: $appBarMobile, appBarWeb: $appBarWeb}';
  }
}

/// generated route for
/// [_i10.OwnerDashborad]
class OwnerDashboradRoute extends _i20.PageRouteInfo<void> {
  const OwnerDashboradRoute({List<_i20.PageRouteInfo>? children})
      : super(
          OwnerDashboradRoute.name,
          initialChildren: children,
        );

  static const String name = 'OwnerDashboradRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i11.OwnerOnborad]
class OwnerOnboradRoute extends _i20.PageRouteInfo<void> {
  const OwnerOnboradRoute({List<_i20.PageRouteInfo>? children})
      : super(
          OwnerOnboradRoute.name,
          initialChildren: children,
        );

  static const String name = 'OwnerOnboradRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i12.Refervehicle]
class RefervehicleRoute extends _i20.PageRouteInfo<void> {
  const RefervehicleRoute({List<_i20.PageRouteInfo>? children})
      : super(
          RefervehicleRoute.name,
          initialChildren: children,
        );

  static const String name = 'RefervehicleRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SelectUsage]
class SelectUsageRoute extends _i20.PageRouteInfo<void> {
  const SelectUsageRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SelectUsageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectUsageRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SignUp]
class SignUpRoute extends _i20.PageRouteInfo<void> {
  const SignUpRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i15.Splash]
class SplashRoute extends _i20.PageRouteInfo<void> {
  const SplashRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i16.Testtext]
class TesttextRoute extends _i20.PageRouteInfo<void> {
  const TesttextRoute({List<_i20.PageRouteInfo>? children})
      : super(
          TesttextRoute.name,
          initialChildren: children,
        );

  static const String name = 'TesttextRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i17.Unloading]
class UnloadingRoute extends _i20.PageRouteInfo<void> {
  const UnloadingRoute({List<_i20.PageRouteInfo>? children})
      : super(
          UnloadingRoute.name,
          initialChildren: children,
        );

  static const String name = 'UnloadingRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i18.VerifyOtp]
class VerifyOtpRoute extends _i20.PageRouteInfo<void> {
  const VerifyOtpRoute({List<_i20.PageRouteInfo>? children})
      : super(
          VerifyOtpRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerifyOtpRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i19.WalkThrough]
class WalkThroughRoute extends _i20.PageRouteInfo<void> {
  const WalkThroughRoute({List<_i20.PageRouteInfo>? children})
      : super(
          WalkThroughRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalkThroughRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}
