// custom_toggle_widget.dart

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/Dock%20Supervisor/View/Dock%20Assign/dockQueueList.dart';
import 'package:moolwmsstore/Dock%20Supervisor/View/Dock%20Assign/vehicleQueueList.dart';

class CustomToggleWidget extends StatefulWidget {
  const CustomToggleWidget({super.key});

  @override
  _CustomToggleWidgetState createState() => _CustomToggleWidgetState();
}

class _CustomToggleWidgetState extends State<CustomToggleWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dock Assign',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          const Gap(10),
          Container(
            height: 50,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TabBar(
              indicatorColor: Colors.transparent,
              controller: _tabController,
              indicator: BoxDecoration(
                color: const Color(0xFF5A57FF),
                borderRadius: BorderRadius.circular(20),
              ),
              unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              tabs: const [
                SizedBox(
                    width: 200, height: 20, child: Tab(text: 'Vehicle Queue')),
                SizedBox(
                    width: 200, height: 20, child: Tab(text: 'Dock Queue')),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                VehicleQueueListScreen(),
                DockQueueListScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
