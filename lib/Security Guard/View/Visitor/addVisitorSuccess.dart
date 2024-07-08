import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class AddVisitorSuccessBySecurityGuard extends StatelessWidget {
const AddVisitorSuccessBySecurityGuard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF5A57FF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
              
              child: PrettyQrView.data(
          data: 'lorem ipsum dolor sit amet',
          decoration: const PrettyQrDecoration(
            image: PrettyQrDecorationImage(
        image: AssetImage('"assets/icons/appLogo.png"'),
            ),
          ),
        ).paddingAll(12),)
          ],
        ),
      ),
    );
  }
}