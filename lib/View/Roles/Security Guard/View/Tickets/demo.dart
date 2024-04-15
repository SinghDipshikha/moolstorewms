import 'package:flutter/material.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/widgets/commonAppBar.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/widgets/commonTextField.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Sign Up',
        actions: [],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: double.infinity,
              //  height: 190,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0x195A57FF)),
                ),
              ),
              child: CommanTextFieldNewTheme(
                labelText: 'Vehicle Number',
                hintText: 'MH 01 AB 1234',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
