import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:moolwmsstore/View/Walkthrough/walkThrough.dart';
import 'package:platform_detector/platform_detector.dart';

@RoutePage()
class LoginWebBody extends StatefulWidget {
  const LoginWebBody({Key? key}) : super(key: key);

  @override
  _LoginWebBodyState createState() => _LoginWebBodyState();
}

class _LoginWebBodyState extends State<LoginWebBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isMobile()
          ? const AutoRouter()
          : const Row(
              children: [
                Expanded(flex: 2, child: WalkThrough()),
                Expanded(
                  flex: 1,
                  child: AutoRouter(),
                )
              ],
            ),
    );
  }
}
