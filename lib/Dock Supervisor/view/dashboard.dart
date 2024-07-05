import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Dock%20Supervisor/View/dmsDrawer.dart';
import 'package:moolwmsstore/Dock%20Supervisor/view/dockDayTimeline.dart';
import 'package:moolwmsstore/utils/dimensions.dart';

class DMSDashboard extends StatelessWidget {
  const DMSDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF232323),
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      drawer: const DmsDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DockDayTimeline(),
          ],
        ).paddingSymmetric(
            vertical: Dimensions.vericalBodyPad,
            horizontal: Dimensions.horizontalBodyPad),
      ),
    );
  }
}
