import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:moolwmsstore/View/common/mobileAppBar.dart';
import 'package:platform_detector/platform_detector.dart';

@RoutePage()
class OwnerDashborad extends StatefulWidget {
  const OwnerDashborad({super.key});

  @override
  State<OwnerDashborad> createState() => _OwnerDashboradState();
}

class _OwnerDashboradState extends State<OwnerDashborad> {
  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

@RoutePage()
class OwnerDashboardBody extends StatefulWidget {
  const OwnerDashboardBody({Key? key}) : super(key: key);

  @override
  State<OwnerDashboardBody> createState() => _OwnerDashboardBodyState();
}

class _OwnerDashboardBodyState extends State<OwnerDashboardBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,

    );
  }
}
