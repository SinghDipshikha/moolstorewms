// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i32;
import 'package:flutter/material.dart' as _i33;
import 'package:moolwmsstore/Data/Model/Warehouse/warehouse.dart' as _i34;
import 'package:moolwmsstore/View/Aspectlayout.dart' as _i10;
import 'package:moolwmsstore/View/Auth/AuthBody.dart' as _i13;
import 'package:moolwmsstore/View/Auth/chooselanguage.dart' as _i16;
import 'package:moolwmsstore/View/Auth/organisationCode.dart' as _i18;
import 'package:moolwmsstore/View/Auth/OtpScreen.dart' as _i19;
import 'package:moolwmsstore/View/Auth/phoneSign.dart' as _i22;
import 'package:moolwmsstore/View/Auth/SelectRole.dart' as _i26;
import 'package:moolwmsstore/View/Auth/signInUp.dart' as _i27;
import 'package:moolwmsstore/View/Auth/splash.dart' as _i28;
import 'package:moolwmsstore/View/Auth/welcome.dart' as _i31;
import 'package:moolwmsstore/View/Roles/Dock%20Supervisor/chamberView.dart'
    as _i15;
import 'package:moolwmsstore/View/Roles/Hr/addEmployeeBankDetails.dart' as _i2;
import 'package:moolwmsstore/View/Roles/Hr/addEmployeeCareerDetails.dart'
    as _i3;
import 'package:moolwmsstore/View/Roles/Hr/addEmployeeContactDetails.dart'
    as _i4;
import 'package:moolwmsstore/View/Roles/Hr/addEmployeeDocuments.dart' as _i5;
import 'package:moolwmsstore/View/Roles/Hr/addEmployeeEducationQualificationDetails.dart'
    as _i6;
import 'package:moolwmsstore/View/Roles/Hr/addEmployeePersonalDetails.dart'
    as _i7;
import 'package:moolwmsstore/View/Roles/Hr/addEmployeeReferralDetails.dart'
    as _i8;
import 'package:moolwmsstore/View/Roles/Owner/addWarehouse.dart' as _i9;
import 'package:moolwmsstore/View/Roles/Owner/OwnerBody.dart' as _i20;
import 'package:moolwmsstore/View/Roles/Owner/OwnerDashboard.dart' as _i21;
import 'package:moolwmsstore/View/Roles/Owner/viewWarehouseDetails.dart'
    as _i29;
import 'package:moolwmsstore/View/Roles/Owner/WarehouseList.dart' as _i30;
import 'package:moolwmsstore/View/Roles/Plant%20Manager/Assets/addChamber.dart'
    as _i1;
import 'package:moolwmsstore/View/Roles/Plant%20Manager/Assets/assetEntry.dart'
    as _i11;
import 'package:moolwmsstore/View/Roles/Plant%20Manager/Assets/AssetsList.dart'
    as _i12;
import 'package:moolwmsstore/View/Roles/Plant%20Manager/Assets/chamberList.dart'
    as _i14;
import 'package:moolwmsstore/View/Roles/Sales/createPurchaseOrder.dart' as _i17;
import 'package:moolwmsstore/View/Roles/Sales/poList.dart' as _i23;
import 'package:moolwmsstore/View/Roles/Security%20Guard/SecurityGuard.dart'
    as _i24;
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/dashboard.dart'
    as _i25;

abstract class $AppRouter extends _i32.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i32.PageFactory> pagesMap = {
    AddChamber.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddChamber(),
      );
    },
    AddEmployeeBankDetails.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddEmployeeBankDetails(),
      );
    },
    AddEmployeeCareerDetails.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AddEmployeeCareerDetails(),
      );
    },
    AddEmployeeContactDetails.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AddEmployeeContactDetails(),
      );
    },
    AddEmployeeDocumentsDetails.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.AddEmployeeDocumentsDetails(),
      );
    },
    AddEmployeeEducationQualificationDetails.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.AddEmployeeEducationQualificationDetails(),
      );
    },
    AddEmployeePersonalDetails.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.AddEmployeePersonalDetails(),
      );
    },
    AddEmployeeReferralDetails.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.AddEmployeeReferralDetails(),
      );
    },
    AddWarehouse.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.AddWarehouse(),
      );
    },
    Aspectlayout.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.Aspectlayout(),
      );
    },
    AssetEntry.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.AssetEntry(),
      );
    },
    AssetsList.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.AssetsList(),
      );
    },
    AuthBody.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.AuthBody(),
      );
    },
    ChamberList.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.ChamberList(),
      );
    },
    ChamberView.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.ChamberView(),
      );
    },
    Chooselanguage.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.Chooselanguage(),
      );
    },
    CreatePo.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.CreatePo(),
      );
    },
    OrganisationCode.name: (routeData) {
      final args = routeData.argsAs<OrganisationCodeArgs>(
          orElse: () => const OrganisationCodeArgs());
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.OrganisationCode(key: args.key),
      );
    },
    OtpRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.OtpScreen(),
      );
    },
    OwnerBody.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.OwnerBody(),
      );
    },
    OwnerDashboard.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.OwnerDashboard(),
      );
    },
    PhoneSign.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.PhoneSign(),
      );
    },
    PoList.name: (routeData) {
      final args =
          routeData.argsAs<PoListArgs>(orElse: () => const PoListArgs());
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.PoList(key: args.key),
      );
    },
    SecurityGuard.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.SecurityGuard(),
      );
    },
    SecurityGuardDashBoard.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.SecurityGuardDashBoard(),
      );
    },
    SelectRole.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.SelectRole(),
      );
    },
    SignInUp.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.SignInUp(),
      );
    },
    Splash.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.Splash(),
      );
    },
    ViewWarehouseDetails.name: (routeData) {
      final args = routeData.argsAs<ViewWarehouseDetailsArgs>(
          orElse: () => const ViewWarehouseDetailsArgs());
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i29.ViewWarehouseDetails(
          key: args.key,
          warehouse: args.warehouse,
        ),
      );
    },
    WarehouseList.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.WarehouseList(),
      );
    },
    Welcome.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i31.Welcome(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddChamber]
class AddChamber extends _i32.PageRouteInfo<void> {
  const AddChamber({List<_i32.PageRouteInfo>? children})
      : super(
          AddChamber.name,
          initialChildren: children,
        );

  static const String name = 'AddChamber';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddEmployeeBankDetails]
class AddEmployeeBankDetails extends _i32.PageRouteInfo<void> {
  const AddEmployeeBankDetails({List<_i32.PageRouteInfo>? children})
      : super(
          AddEmployeeBankDetails.name,
          initialChildren: children,
        );

  static const String name = 'AddEmployeeBankDetails';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AddEmployeeCareerDetails]
class AddEmployeeCareerDetails extends _i32.PageRouteInfo<void> {
  const AddEmployeeCareerDetails({List<_i32.PageRouteInfo>? children})
      : super(
          AddEmployeeCareerDetails.name,
          initialChildren: children,
        );

  static const String name = 'AddEmployeeCareerDetails';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AddEmployeeContactDetails]
class AddEmployeeContactDetails extends _i32.PageRouteInfo<void> {
  const AddEmployeeContactDetails({List<_i32.PageRouteInfo>? children})
      : super(
          AddEmployeeContactDetails.name,
          initialChildren: children,
        );

  static const String name = 'AddEmployeeContactDetails';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i5.AddEmployeeDocumentsDetails]
class AddEmployeeDocumentsDetails extends _i32.PageRouteInfo<void> {
  const AddEmployeeDocumentsDetails({List<_i32.PageRouteInfo>? children})
      : super(
          AddEmployeeDocumentsDetails.name,
          initialChildren: children,
        );

  static const String name = 'AddEmployeeDocumentsDetails';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i6.AddEmployeeEducationQualificationDetails]
class AddEmployeeEducationQualificationDetails
    extends _i32.PageRouteInfo<void> {
  const AddEmployeeEducationQualificationDetails(
      {List<_i32.PageRouteInfo>? children})
      : super(
          AddEmployeeEducationQualificationDetails.name,
          initialChildren: children,
        );

  static const String name = 'AddEmployeeEducationQualificationDetails';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i7.AddEmployeePersonalDetails]
class AddEmployeePersonalDetails extends _i32.PageRouteInfo<void> {
  const AddEmployeePersonalDetails({List<_i32.PageRouteInfo>? children})
      : super(
          AddEmployeePersonalDetails.name,
          initialChildren: children,
        );

  static const String name = 'AddEmployeePersonalDetails';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i8.AddEmployeeReferralDetails]
class AddEmployeeReferralDetails extends _i32.PageRouteInfo<void> {
  const AddEmployeeReferralDetails({List<_i32.PageRouteInfo>? children})
      : super(
          AddEmployeeReferralDetails.name,
          initialChildren: children,
        );

  static const String name = 'AddEmployeeReferralDetails';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i9.AddWarehouse]
class AddWarehouse extends _i32.PageRouteInfo<void> {
  const AddWarehouse({List<_i32.PageRouteInfo>? children})
      : super(
          AddWarehouse.name,
          initialChildren: children,
        );

  static const String name = 'AddWarehouse';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i10.Aspectlayout]
class Aspectlayout extends _i32.PageRouteInfo<void> {
  const Aspectlayout({List<_i32.PageRouteInfo>? children})
      : super(
          Aspectlayout.name,
          initialChildren: children,
        );

  static const String name = 'Aspectlayout';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i11.AssetEntry]
class AssetEntry extends _i32.PageRouteInfo<void> {
  const AssetEntry({List<_i32.PageRouteInfo>? children})
      : super(
          AssetEntry.name,
          initialChildren: children,
        );

  static const String name = 'AssetEntry';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i12.AssetsList]
class AssetsList extends _i32.PageRouteInfo<void> {
  const AssetsList({List<_i32.PageRouteInfo>? children})
      : super(
          AssetsList.name,
          initialChildren: children,
        );

  static const String name = 'AssetsList';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i13.AuthBody]
class AuthBody extends _i32.PageRouteInfo<void> {
  const AuthBody({List<_i32.PageRouteInfo>? children})
      : super(
          AuthBody.name,
          initialChildren: children,
        );

  static const String name = 'AuthBody';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i14.ChamberList]
class ChamberList extends _i32.PageRouteInfo<void> {
  const ChamberList({List<_i32.PageRouteInfo>? children})
      : super(
          ChamberList.name,
          initialChildren: children,
        );

  static const String name = 'ChamberList';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i15.ChamberView]
class ChamberView extends _i32.PageRouteInfo<void> {
  const ChamberView({List<_i32.PageRouteInfo>? children})
      : super(
          ChamberView.name,
          initialChildren: children,
        );

  static const String name = 'ChamberView';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i16.Chooselanguage]
class Chooselanguage extends _i32.PageRouteInfo<void> {
  const Chooselanguage({List<_i32.PageRouteInfo>? children})
      : super(
          Chooselanguage.name,
          initialChildren: children,
        );

  static const String name = 'Chooselanguage';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i17.CreatePo]
class CreatePo extends _i32.PageRouteInfo<void> {
  const CreatePo({List<_i32.PageRouteInfo>? children})
      : super(
          CreatePo.name,
          initialChildren: children,
        );

  static const String name = 'CreatePo';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i18.OrganisationCode]
class OrganisationCode extends _i32.PageRouteInfo<OrganisationCodeArgs> {
  OrganisationCode({
    _i33.Key? key,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          OrganisationCode.name,
          args: OrganisationCodeArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OrganisationCode';

  static const _i32.PageInfo<OrganisationCodeArgs> page =
      _i32.PageInfo<OrganisationCodeArgs>(name);
}

class OrganisationCodeArgs {
  const OrganisationCodeArgs({this.key});

  final _i33.Key? key;

  @override
  String toString() {
    return 'OrganisationCodeArgs{key: $key}';
  }
}

/// generated route for
/// [_i19.OtpScreen]
class OtpRoute extends _i32.PageRouteInfo<void> {
  const OtpRoute({List<_i32.PageRouteInfo>? children})
      : super(
          OtpRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i20.OwnerBody]
class OwnerBody extends _i32.PageRouteInfo<void> {
  const OwnerBody({List<_i32.PageRouteInfo>? children})
      : super(
          OwnerBody.name,
          initialChildren: children,
        );

  static const String name = 'OwnerBody';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i21.OwnerDashboard]
class OwnerDashboard extends _i32.PageRouteInfo<void> {
  const OwnerDashboard({List<_i32.PageRouteInfo>? children})
      : super(
          OwnerDashboard.name,
          initialChildren: children,
        );

  static const String name = 'OwnerDashboard';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i22.PhoneSign]
class PhoneSign extends _i32.PageRouteInfo<void> {
  const PhoneSign({List<_i32.PageRouteInfo>? children})
      : super(
          PhoneSign.name,
          initialChildren: children,
        );

  static const String name = 'PhoneSign';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i23.PoList]
class PoList extends _i32.PageRouteInfo<PoListArgs> {
  PoList({
    _i33.Key? key,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          PoList.name,
          args: PoListArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PoList';

  static const _i32.PageInfo<PoListArgs> page = _i32.PageInfo<PoListArgs>(name);
}

class PoListArgs {
  const PoListArgs({this.key});

  final _i33.Key? key;

  @override
  String toString() {
    return 'PoListArgs{key: $key}';
  }
}

/// generated route for
/// [_i24.SecurityGuard]
class SecurityGuard extends _i32.PageRouteInfo<void> {
  const SecurityGuard({List<_i32.PageRouteInfo>? children})
      : super(
          SecurityGuard.name,
          initialChildren: children,
        );

  static const String name = 'SecurityGuard';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i25.SecurityGuardDashBoard]
class SecurityGuardDashBoard extends _i32.PageRouteInfo<void> {
  const SecurityGuardDashBoard({List<_i32.PageRouteInfo>? children})
      : super(
          SecurityGuardDashBoard.name,
          initialChildren: children,
        );

  static const String name = 'SecurityGuardDashBoard';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i26.SelectRole]
class SelectRole extends _i32.PageRouteInfo<void> {
  const SelectRole({List<_i32.PageRouteInfo>? children})
      : super(
          SelectRole.name,
          initialChildren: children,
        );

  static const String name = 'SelectRole';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i27.SignInUp]
class SignInUp extends _i32.PageRouteInfo<void> {
  const SignInUp({List<_i32.PageRouteInfo>? children})
      : super(
          SignInUp.name,
          initialChildren: children,
        );

  static const String name = 'SignInUp';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i28.Splash]
class Splash extends _i32.PageRouteInfo<void> {
  const Splash({List<_i32.PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i29.ViewWarehouseDetails]
class ViewWarehouseDetails
    extends _i32.PageRouteInfo<ViewWarehouseDetailsArgs> {
  ViewWarehouseDetails({
    _i33.Key? key,
    _i34.Warehouse? warehouse,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          ViewWarehouseDetails.name,
          args: ViewWarehouseDetailsArgs(
            key: key,
            warehouse: warehouse,
          ),
          initialChildren: children,
        );

  static const String name = 'ViewWarehouseDetails';

  static const _i32.PageInfo<ViewWarehouseDetailsArgs> page =
      _i32.PageInfo<ViewWarehouseDetailsArgs>(name);
}

class ViewWarehouseDetailsArgs {
  const ViewWarehouseDetailsArgs({
    this.key,
    this.warehouse,
  });

  final _i33.Key? key;

  final _i34.Warehouse? warehouse;

  @override
  String toString() {
    return 'ViewWarehouseDetailsArgs{key: $key, warehouse: $warehouse}';
  }
}

/// generated route for
/// [_i30.WarehouseList]
class WarehouseList extends _i32.PageRouteInfo<void> {
  const WarehouseList({List<_i32.PageRouteInfo>? children})
      : super(
          WarehouseList.name,
          initialChildren: children,
        );

  static const String name = 'WarehouseList';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i31.Welcome]
class Welcome extends _i32.PageRouteInfo<void> {
  const Welcome({List<_i32.PageRouteInfo>? children})
      : super(
          Welcome.name,
          initialChildren: children,
        );

  static const String name = 'Welcome';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}
