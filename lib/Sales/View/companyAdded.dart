import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'package:moolwmsstore/Sales/Sales.dart';
import 'package:moolwmsstore/Sales/View/SalesDashboard.dart';
import 'package:moolwmsstore/Sales/View/companyList.dart';
import 'package:moolwmsstore/Sales/View/widgets/customButton.dart';
import 'package:moolwmsstore/utils/globals.dart';

class CompanyAdded extends StatelessWidget {
  const CompanyAdded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5A57FF),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            colors: const [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
            titleTextColor: Colors.black,
            onTap: () {
              Get.off(const CompanyList(), id: salesNavigationKey);
            },
            title: "Company List",
          ).paddingSymmetric(horizontal: 12),
          const Gap(12),
          CustomButton(
            onTap: () {
              Get.off(const SalesDashboard(), id: salesNavigationKey);
            },
            title: "Home",
          ).paddingSymmetric(horizontal: 12),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Company Added',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              Text(
                'You have successfully added a company in your Warehouse.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
          Image.asset('assets/icons/Group 1000010641.png')
        ],
      ).paddingSymmetric(horizontal: 24),
    );
  }
}
