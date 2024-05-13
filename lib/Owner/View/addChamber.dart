import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Owner/View/Common/ownerCommon.dart';

class AddChamber extends StatelessWidget {
  const AddChamber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StyledContainer(
              child: Column(
            children: [
              CommanTextField(
                hintText: "Enter chambers number",
                containerColor: Colors.white,
                labelText: 'Chamber Number',
              ),
              CommanTextField(
                suffixIcon: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'SQ. FT',
                      style: TextStyle(
                        color: Color(0xFFACACAC),
                        fontSize: 12,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                hintText: "0",
                containerColor: Colors.white,
                labelText: 'Chamber Capacity',
              )
            ],
          )),
          StyledContainer(
              child: Column(
            children: [
              CommanTextField(
                hintText: "Enter chambers number",
                containerColor: Colors.white,
                labelText: 'Chamber Number',
              ),
              CommanTextField(
                suffixIcon: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'SQ. FT',
                      style: TextStyle(
                        color: Color(0xFFACACAC),
                        fontSize: 12,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                hintText: "0",
                containerColor: Colors.white,
                labelText: 'Chamber Capacity',
              )
            ],
          )),
          StyledContainer(
              child: Column(
            children: [
              CommanTextField(
                hintText: "Enter chambers number",
                containerColor: Colors.white,
                labelText: 'Chamber Number',
              ),
              CommanTextField(
                suffixIcon: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'SQ. FT',
                      style: TextStyle(
                        color: Color(0xFFACACAC),
                        fontSize: 12,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                hintText: "0",
                containerColor: Colors.white,
                labelText: 'Chamber Capacity',
              )
            ],
          )),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'add_chamber'.tr,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
