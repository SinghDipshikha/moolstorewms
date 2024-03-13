import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/myTextField.dart';

class CreatePo extends StatelessWidget {
  const CreatePo({super.key});

  @override
  Widget build(BuildContext context) {
    const double verticalPad = 20;
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: false,
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.vertical(
        //     bottom: Radius.circular(34),
        //   ),
        // ),
        backgroundColor: Colors.black,
        title: const Text(
          'Create Purchase Order',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                runSpacing: 40,
                spacing: 40,
                children: [
                  Container(
                      constraints: const BoxConstraints(maxWidth: 600),
                      child: const ComapanyDetails()),
                  Container(
                      constraints: const BoxConstraints(maxWidth: 600),
                      child: const ComapanyDetails()),
                  Container(
                      constraints: const BoxConstraints(maxWidth: 600),
                      child: const ComapanyDetails()),
                  Container(
                      constraints: const BoxConstraints(maxWidth: 600),
                      child: const ComapanyDetails()),
                ],
              ),
              const Row()
            ],
          ),
        ),
      ),
    );
  }
}

class ComapanyDetails extends StatelessWidget {
  const ComapanyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    const double verticalPad = 10;
    return Column(
      children: [
        MyTextField(
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/icons/Asset Form Icons.png",
                  height: 20,
                ),
              ),
              const Text(
                "Call From : ",
                style: TextStyle(
                  color: Color(0xFF595959),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        const Gap(verticalPad),
        MyTextField(
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/icons/Location Icon.png",
                    height: 22,
                    color: const Color(0xFFACACAC),
                  )),
              const Text(
                "Address : ",
                style: TextStyle(
                  color: Color(0xFF595959),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        const Gap(verticalPad),
        MyTextField(
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/icons/recipt.png",
                  height: 20,
                ),
              ),
              const Text(
                'Gst In :',
                style: TextStyle(
                  color: Color(0xFF595959),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        const Gap(verticalPad),
        MyTextField(
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/icons/Field Icon Phone.png",
                  height: 20,
                ),
              ),
              const Text(
                'Phone Number :',
                style: TextStyle(
                  color: Color(0xFF595959),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
