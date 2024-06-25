import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Customer/View/customerDashboard.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/globals.dart';

class Customer extends StatelessWidget {
  const Customer({super.key});

  @override
  Widget build(BuildContext context) {
    return context.isPhone
        ? GetNavigator(
            key: Get.nestedKey(customerNavigationKey),
            pages: const [
              MaterialPage(
                key: ValueKey('customerDashBoard'),
                child: CustomerDashboard(),
              )
            ],
            onPopPage: (route, result) => route.didPop(result),
          )
        : Container(
            color: AppColors.linkedInBGColor,
            child: Center(
              child: Card(
                margin: EdgeInsets.zero,
                elevation: 20,
                child: Container(
                  height: double.infinity,
                  constraints: const BoxConstraints(maxWidth: 800),
                  child: GetNavigator(
                    key: Get.nestedKey(customerNavigationKey),
                    pages: const [
                      MaterialPage(
                        key: ValueKey('CustomerDashBoard'),
                        child: CustomerDashboard(),
                      )
                    ],
                    onPopPage: (route, result) => route.didPop(result),
                  ),
                ),
              ),
            ),
          );
  }
}
