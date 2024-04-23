import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

@RoutePage()
class AuthBody extends StatelessWidget {
  const AuthBody({super.key});

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
