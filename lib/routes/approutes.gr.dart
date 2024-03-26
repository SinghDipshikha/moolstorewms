// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i22;
import 'package:flutter/material.dart' as _i23;
import 'package:moolwmsstore/Data/Model/Warehouse/warehouse.dart' as _i24;
import 'package:moolwmsstore/View/Auth/chooselanguage.dart' as _i9;
import 'package:moolwmsstore/View/Auth/OtpScreen.dart' as _i11;
import 'package:moolwmsstore/View/Auth/phoneSign.dart' as _i13;
import 'package:moolwmsstore/View/Auth/SelectRole.dart' as _i15;
import 'package:moolwmsstore/View/Auth/signUp.dart' as _i16;
import 'package:moolwmsstore/View/Auth/splash.dart' as _i17;
import 'package:moolwmsstore/View/Auth/welcome.dart' as _i21;
import 'package:moolwmsstore/View/Body.dart' as _i6;
import 'package:moolwmsstore/View/Roles/Dock%20Supervisor/chamberView.dart'
    as _i8;
import 'package:moolwmsstore/View/Roles/Hr/addEmployeePersonalDetails.dart'
    as _i2;
import 'package:moolwmsstore/View/Roles/Owner/addWarehouse.dart' as _i3;
import 'package:moolwmsstore/View/Roles/Owner/OwnerDashboard.dart' as _i12;
import 'package:moolwmsstore/View/Roles/Owner/viewWarehouseDetails.dart'
    as _i19;
import 'package:moolwmsstore/View/Roles/Owner/WarehouseList.dart' as _i20;
import 'package:moolwmsstore/View/Roles/Plant%20Manager/Assets/addChamber.dart'
    as _i1;
import 'package:moolwmsstore/View/Roles/Plant%20Manager/Assets/assetEntry.dart'
    as _i4;
import 'package:moolwmsstore/View/Roles/Plant%20Manager/Assets/AssetsList.dart'
    as _i5;
import 'package:moolwmsstore/View/Roles/Plant%20Manager/Assets/chamberList.dart'
    as _i7;
import 'package:moolwmsstore/View/Roles/Sales/createPurchaseOrder.dart' as _i10;
import 'package:moolwmsstore/View/Roles/Sales/poList.dart' as _i14;
import 'package:moolwmsstore/View/testRoutes.dart' as _i18;

abstract class $AppRouter extends _i22.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i22.PageFactory> pagesMap = {
    AddChamber.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddChamber(),
      );
    },
    AddSecurityGuardRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddSecurityGuardScreen(),
      );
    },
    AddWarehouse.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AddWarehouse(),
      );
    },
    AssetEntry.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AssetEntry(),
      );
    },
    AssetsList.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.AssetsList(),
      );
    },
    Body.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.Body(),
      );
    },
    ChamberList.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ChamberList(),
      );
    },
    ChamberView.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ChamberView(),
      );
    },
    Chooselanguage.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.Chooselanguage(),
      );
    },
    CreatePo.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.CreatePo(),
      );
    },
    OtpRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.OtpScreen(),
      );
    },
    OwnerDashboard.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.OwnerDashboard(),
      );
    },
    PhoneSign.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.PhoneSign(),
      );
    },
    PoList.name: (routeData) {
      final args =
          routeData.argsAs<PoListArgs>(orElse: () => const PoListArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.PoList(key: args.key),
      );
    },
    SelectRole.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SelectRole(),
      );
    },
    Signup.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.Signup(),
      );
    },
    Splash.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.Splash(),
      );
    },
    TestRoutes.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.TestRoutes(),
      );
    },
    TestRoutespage.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.TestRoutespage(),
      );
    },
    ViewWarehouseDetails.name: (routeData) {
      final args = routeData.argsAs<ViewWarehouseDetailsArgs>(
          orElse: () => const ViewWarehouseDetailsArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.ViewWarehouseDetails(
          key: args.key,
          warehouse: args.warehouse,
        ),
      );
    },
    WarehouseList.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.WarehouseList(),
      );
    },
    Welcome.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.Welcome(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddChamber]
class AddChamber extends _i22.PageRouteInfo<void> {
  const AddChamber({List<_i22.PageRouteInfo>? children})
      : super(
          AddChamber.name,
          initialChildren: children,
        );

  static const String name = 'AddChamber';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddSecurityGuardScreen]
class AddSecurityGuardRoute extends _i22.PageRouteInfo<void> {
  const AddSecurityGuardRoute({List<_i22.PageRouteInfo>? children})
      : super(
          AddSecurityGuardRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddSecurityGuardRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AddWarehouse]
class AddWarehouse extends _i22.PageRouteInfo<void> {
  const AddWarehouse({List<_i22.PageRouteInfo>? children})
      : super(
          AddWarehouse.name,
          initialChildren: children,
        );

  static const String name = 'AddWarehouse';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AssetEntry]
class AssetEntry extends _i22.PageRouteInfo<void> {
  const AssetEntry({List<_i22.PageRouteInfo>? children})
      : super(
          AssetEntry.name,
          initialChildren: children,
        );

  static const String name = 'AssetEntry';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i5.AssetsList]
class AssetsList extends _i22.PageRouteInfo<void> {
  const AssetsList({List<_i22.PageRouteInfo>? children})
      : super(
          AssetsList.name,
          initialChildren: children,
        );

  static const String name = 'AssetsList';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i6.Body]
class Body extends _i22.PageRouteInfo<void> {
  const Body({List<_i22.PageRouteInfo>? children})
      : super(
          Body.name,
          initialChildren: children,
        );

  static const String name = 'Body';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ChamberList]
class ChamberList extends _i22.PageRouteInfo<void> {
  const ChamberList({List<_i22.PageRouteInfo>? children})
      : super(
          ChamberList.name,
          initialChildren: children,
        );

  static const String name = 'ChamberList';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ChamberView]
class ChamberView extends _i22.PageRouteInfo<void> {
  const ChamberView({List<_i22.PageRouteInfo>? children})
      : super(
          ChamberView.name,
          initialChildren: children,
        );

  static const String name = 'ChamberView';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i9.Chooselanguage]
class Chooselanguage extends _i22.PageRouteInfo<void> {
  const Chooselanguage({List<_i22.PageRouteInfo>? children})
      : super(
          Chooselanguage.name,
          initialChildren: children,
        );

  static const String name = 'Chooselanguage';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i10.CreatePo]
class CreatePo extends _i22.PageRouteInfo<void> {
  const CreatePo({List<_i22.PageRouteInfo>? children})
      : super(
          CreatePo.name,
          initialChildren: children,
        );

  static const String name = 'CreatePo';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i11.OtpScreen]
class OtpRoute extends _i22.PageRouteInfo<void> {
  const OtpRoute({List<_i22.PageRouteInfo>? children})
      : super(
          OtpRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i12.OwnerDashboard]
class OwnerDashboard extends _i22.PageRouteInfo<void> {
  const OwnerDashboard({List<_i22.PageRouteInfo>? children})
      : super(
          OwnerDashboard.name,
          initialChildren: children,
        );

  static const String name = 'OwnerDashboard';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i13.PhoneSign]
class PhoneSign extends _i22.PageRouteInfo<void> {
  const PhoneSign({List<_i22.PageRouteInfo>? children})
      : super(
          PhoneSign.name,
          initialChildren: children,
        );

  static const String name = 'PhoneSign';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i14.PoList]
class PoList extends _i22.PageRouteInfo<PoListArgs> {
  PoList({
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          PoList.name,
          args: PoListArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PoList';

  static const _i22.PageInfo<PoListArgs> page = _i22.PageInfo<PoListArgs>(name);
}

class PoListArgs {
  const PoListArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'PoListArgs{key: $key}';
  }
}

/// generated route for
/// [_i15.SelectRole]
class SelectRole extends _i22.PageRouteInfo<void> {
  const SelectRole({List<_i22.PageRouteInfo>? children})
      : super(
          SelectRole.name,
          initialChildren: children,
        );

  static const String name = 'SelectRole';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i16.Signup]
class Signup extends _i22.PageRouteInfo<void> {
  const Signup({List<_i22.PageRouteInfo>? children})
      : super(
          Signup.name,
          initialChildren: children,
        );

  static const String name = 'Signup';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i17.Splash]
class Splash extends _i22.PageRouteInfo<void> {
  const Splash({List<_i22.PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i18.TestRoutes]
class TestRoutes extends _i22.PageRouteInfo<void> {
  const TestRoutes({List<_i22.PageRouteInfo>? children})
      : super(
          TestRoutes.name,
          initialChildren: children,
        );

  static const String name = 'TestRoutes';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i18.TestRoutespage]
class TestRoutespage extends _i22.PageRouteInfo<void> {
  const TestRoutespage({List<_i22.PageRouteInfo>? children})
      : super(
          TestRoutespage.name,
          initialChildren: children,
        );

  static const String name = 'TestRoutespage';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i19.ViewWarehouseDetails]
class ViewWarehouseDetails
    extends _i22.PageRouteInfo<ViewWarehouseDetailsArgs> {
  ViewWarehouseDetails({
    _i23.Key? key,
    _i24.Warehouse? warehouse,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          ViewWarehouseDetails.name,
          args: ViewWarehouseDetailsArgs(
            key: key,
            warehouse: warehouse,
          ),
          initialChildren: children,
        );

  static const String name = 'ViewWarehouseDetails';

  static const _i22.PageInfo<ViewWarehouseDetailsArgs> page =
      _i22.PageInfo<ViewWarehouseDetailsArgs>(name);
}

class ViewWarehouseDetailsArgs {
  const ViewWarehouseDetailsArgs({
    this.key,
    this.warehouse,
  });

  final _i23.Key? key;

  final _i24.Warehouse? warehouse;

  @override
  String toString() {
    return 'ViewWarehouseDetailsArgs{key: $key, warehouse: $warehouse}';
  }
}

/// generated route for
/// [_i20.WarehouseList]
class WarehouseList extends _i22.PageRouteInfo<void> {
  const WarehouseList({List<_i22.PageRouteInfo>? children})
      : super(
          WarehouseList.name,
          initialChildren: children,
        );

  static const String name = 'WarehouseList';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i21.Welcome]
class Welcome extends _i22.PageRouteInfo<void> {
  const Welcome({List<_i22.PageRouteInfo>? children})
      : super(
          Welcome.name,
          initialChildren: children,
        );

  static const String name = 'Welcome';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}
