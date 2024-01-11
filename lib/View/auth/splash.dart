import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/userController.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';

@RoutePage()
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetBuilder<UserController>(initState: (state) {
          Future.delayed(const Duration(seconds: 2)).whenComplete(() {
            context.pushRoute(const LoginWebBodyRoute());
          });
        }, builder: (uiController) {
          return Image.asset(
            "assets/images/moolcode_logo.png",
            height: 200,
            // color: Colors.white,
          );
        }),
      ),
    );
  }
}
