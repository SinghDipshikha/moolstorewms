import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Auth/Controllers/authController.dart';


class OrganisationCode extends StatelessWidget {
  OrganisationCode({super.key});
  TextEditingController? controller = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF6562FF), Color(0xFF5A57FF)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image.asset("assets/images/Group 1000010596.png")
                      .paddingSymmetric(horizontal: 16, vertical: 12)),
              const Text(
                'Organisation Number',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  // height: 0,
                ),
              ).paddingSymmetric(vertical: 12),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your organisation code.';
                  }

                  return null;
                },
                controller: controller,
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                onFieldSubmitted: (value) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                style: const TextStyle(
                  color: Colors.yellow,
                  fontSize: 18,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w900,
                  // height: 0,
                ),
                decoration: const InputDecoration(
                    hintText: 'Enter organisation number',
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.white, width: 0.4)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white))),
              ).paddingOnly(bottom: 20),
              // const Gap(20),
              Center(
                child: InkWell(
                  onTap: () {
                    if (formKey.currentState?.validate() ?? false) {
                      Get.find<AuthController>().checkOrganisationCode(
                          organiosationCode: controller!.text.toString());
                    }

                    //  Get.snackbar("cdhbdhcb", "dhbchd");
                    //  context.
                  },
                  child: Container(
                    alignment: Alignment.center,
                    // width: 358,
                    height: 45,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 2,
                          offset: Offset(0, 2),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: const Text(
                      'Check',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF353535),
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        height: 0.12,
                        letterSpacing: 0.32,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ).paddingSymmetric(horizontal: 20),
        ),
      ),
    );
  }
}
