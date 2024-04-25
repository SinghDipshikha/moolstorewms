import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//@RoutePage()
class HumanResource extends StatelessWidget {
  const HumanResource({super.key});

  @override
  Widget build(BuildContext context) {
    return context.isPhone
        ? const AutoRouter()
        : Container(
            color: Colors.white,
            child: Center(
              child: Card(
                margin: EdgeInsets.zero,
                elevation: 20,
                child: Container(
                  height: double.infinity,
                  constraints: const BoxConstraints(maxWidth: 800),
                  child: const AutoRouter(),
                ),
              ),
            ),
          );
  }
}
