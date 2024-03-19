// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:moolwmsstore/View/Auth/chooselanguage.dart' as _i8;
import 'package:moolwmsstore/View/Auth/OtpScreen.dart' as _i10;
import 'package:moolwmsstore/View/Auth/phoneSign.dart' as _i12;
import 'package:moolwmsstore/View/Auth/SelectRole.dart' as _i14;
import 'package:moolwmsstore/View/Auth/signup.dart' as _i15;
import 'package:moolwmsstore/View/Auth/Splash.dart' as _i16;
import 'package:moolwmsstore/View/Auth/welcome.dart' as _i19;
import 'package:moolwmsstore/View/Body.dart' as _i5;
import 'package:moolwmsstore/View/Roles/Dock%20Supervisor/chamberView.dart'
    as _i7;
import 'package:moolwmsstore/View/Roles/Owner/addWarehouse.dart' as _i2;
import 'package:moolwmsstore/View/Roles/Owner/OwnerDashboard.dart' as _i11;
import 'package:moolwmsstore/View/Roles/Owner/viewWarehouseDetails.dart'
    as _i17;
import 'package:moolwmsstore/View/Roles/Owner/WarehouseList.dart' as _i18;
import 'package:moolwmsstore/View/Roles/Plant%20Manager/Assets/addChamber.dart'
    as _i1;
import 'package:moolwmsstore/View/Roles/Plant%20Manager/Assets/assetEntry.dart'
    as _i3;
import 'package:moolwmsstore/View/Roles/Plant%20Manager/Assets/AssetsList.dart'
    as _i4;
import 'package:moolwmsstore/View/Roles/Plant%20Manager/Assets/chamberList.dart'
    as _i6;
import 'package:moolwmsstore/View/Roles/Sales/createPurchaseOrder.dart' as _i9;
import 'package:moolwmsstore/View/Roles/Sales/poList.dart' as _i13;

abstract class $AppRouter extends _i20.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    AddChamber.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddChamber(),
      );
    },
    AddWarehouse.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddWarehouse(),
      );
    },
    AssetEntry.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AssetEntry(),
      );
    },
    AssetsList.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AssetsList(),
      );
    },
    Body.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.Body(),
      );
    },
    ChamberList.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ChamberList(),
      );
    },
    ChamberView.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ChamberView(),
      );
    },
    Chooselanguage.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.Chooselanguage(),
      );
    },
    CreatePo.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.CreatePo(),
      );
    },
    OtpRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.OtpScreen(),
      );
    },
    OwnerDashboard.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.OwnerDashboard(),
      );
    },
    PhoneSign.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.PhoneSign(),
      );
    },
    PoList.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.PoList(),
      );
    },
    SelectRole.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SelectRole(),
      );
    },
    Signup.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.Signup(),
      );
    },
    Splash.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.Splash(),
      );
    },
    ViewWarehouseDetails.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.ViewWarehouseDetails(),
      );
    },
    WarehouseList.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.WarehouseList(),
      );
    },
    Welcome.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.Welcome(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddChamber]
class AddChamber extends _i20.PageRouteInfo<void> {
  const AddChamber({List<_i20.PageRouteInfo>? children})
      : super(
          AddChamber.name,
          initialChildren: children,
        );

  static const String name = 'AddChamber';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddWarehouse]
class AddWarehouse extends _i20.PageRouteInfo<void> {
  const AddWarehouse({List<_i20.PageRouteInfo>? children})
      : super(
          AddWarehouse.name,
          initialChildren: children,
        );

  static const String name = 'AddWarehouse';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AssetEntry]
class AssetEntry extends _i20.PageRouteInfo<void> {
  const AssetEntry({List<_i20.PageRouteInfo>? children})
      : super(
          AssetEntry.name,
          initialChildren: children,
        );

  static const String name = 'AssetEntry';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AssetsList]
class AssetsList extends _i20.PageRouteInfo<void> {
  const AssetsList({List<_i20.PageRouteInfo>? children})
      : super(
          AssetsList.name,
          initialChildren: children,
        );

  static const String name = 'AssetsList';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i5.Body]
class Body extends _i20.PageRouteInfo<void> {
  const Body({List<_i20.PageRouteInfo>? children})
      : super(
          Body.name,
          initialChildren: children,
        );

  static const String name = 'Body';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ChamberList]
class ChamberList extends _i20.PageRouteInfo<void> {
  const ChamberList({List<_i20.PageRouteInfo>? children})
      : super(
          ChamberList.name,
          initialChildren: children,
        );

  static const String name = 'ChamberList';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ChamberView]
class ChamberView extends _i20.PageRouteInfo<void> {
  const ChamberView({List<_i20.PageRouteInfo>? children})
      : super(
          ChamberView.name,
          initialChildren: children,
        );

  static const String name = 'ChamberView';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i8.Chooselanguage]
class Chooselanguage extends _i20.PageRouteInfo<void> {
  const Chooselanguage({List<_i20.PageRouteInfo>? children})
      : super(
          Chooselanguage.name,
          initialChildren: children,
        );

  static const String name = 'Chooselanguage';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i9.CreatePo]
class CreatePo extends _i20.PageRouteInfo<void> {
  const CreatePo({List<_i20.PageRouteInfo>? children})
      : super(
          CreatePo.name,
          initialChildren: children,
        );

  static const String name = 'CreatePo';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i10.OtpScreen]
class OtpRoute extends _i20.PageRouteInfo<void> {
  const OtpRoute({List<_i20.PageRouteInfo>? children})
      : super(
          OtpRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i11.OwnerDashboard]
class OwnerDashboard extends _i20.PageRouteInfo<void> {
  const OwnerDashboard({List<_i20.PageRouteInfo>? children})
      : super(
          OwnerDashboard.name,
          initialChildren: children,
        );

  static const String name = 'OwnerDashboard';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i12.PhoneSign]
class PhoneSign extends _i20.PageRouteInfo<void> {
  const PhoneSign({List<_i20.PageRouteInfo>? children})
      : super(
          PhoneSign.name,
          initialChildren: children,
        );

  static const String name = 'PhoneSign';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i13.PoList]
class PoList extends _i20.PageRouteInfo<void> {
  const PoList({List<_i20.PageRouteInfo>? children})
      : super(
          PoList.name,
          initialChildren: children,
        );

  static const String name = 'PoList';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SelectRole]
class SelectRole extends _i20.PageRouteInfo<void> {
  const SelectRole({List<_i20.PageRouteInfo>? children})
      : super(
          SelectRole.name,
          initialChildren: children,
        );

  static const String name = 'SelectRole';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i15.Signup]
class Signup extends _i20.PageRouteInfo<void> {
  const Signup({List<_i20.PageRouteInfo>? children})
      : super(
          Signup.name,
          initialChildren: children,
        );

  static const String name = 'Signup';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i16.Splash]
class Splash extends _i20.PageRouteInfo<void> {
  const Splash({List<_i20.PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i17.ViewWarehouseDetails]
class ViewWarehouseDetails extends _i20.PageRouteInfo<void> {
  const ViewWarehouseDetails({List<_i20.PageRouteInfo>? children})
      : super(
          ViewWarehouseDetails.name,
          initialChildren: children,
        );

  static const String name = 'ViewWarehouseDetails';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i18.WarehouseList]
class WarehouseList extends _i20.PageRouteInfo<void> {
  const WarehouseList({List<_i20.PageRouteInfo>? children})
      : super(
          WarehouseList.name,
          initialChildren: children,
        );

  static const String name = 'WarehouseList';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i19.Welcome]
class Welcome extends _i20.PageRouteInfo<void> {
  const Welcome({List<_i20.PageRouteInfo>? children})
      : super(
          Welcome.name,
          initialChildren: children,
        );

  static const String name = 'Welcome';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}
