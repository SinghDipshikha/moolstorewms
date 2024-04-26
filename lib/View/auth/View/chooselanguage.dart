import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/localization_controller.dart';
import 'package:moolwmsstore/View/Auth/View/phoneSign.dart';
import 'package:moolwmsstore/utils/appConstants.dart';

////@RoutePage()
class Chooselanguage extends StatelessWidget {
  const Chooselanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          context.isPhone ? FloatingActionButtonLocation.centerFloat : null,
      floatingActionButton: InkWell(
        onTap: () {
          Get.to(PhoneSign(
            signUp: true,
          ));
        },
        child: Image.asset(
          "assets/icons/arrow-circle-right.png",
          height: 40,
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/Languages 1.png"),
                ],
              ),
              const Text(
                'Select your Language',
                style: TextStyle(
                  color: Color(0xFF353535),
                  fontSize: 24,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              const Text(
                'Please select your preferred language',
                style: TextStyle(
                  color: Color(0xFF595959),
                  fontSize: 16,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              GetBuilder<LocalizationController>(builder: (localizeController) {
                return Column(
                  children:
                      List.generate(AppConstants.LANGUAGE_LIST.length, (index) {
                    bool selected = localizeController.locale.languageCode ==
                        AppConstants.LANGUAGE_LIST[index].language.languageCode;

                    return InkWell(
                      onTap: () {
                        localizeController.setLanguage(Locale(
                          AppConstants.LANGUAGE_LIST[index].languageCode,
                        ));
                      },
                      child: Container(
                        height: 40,
                        // padding: const EdgeInsets.symmetric(
                        //     vertical: 10, horizontal: 12),
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Color(0x0C000000),
                            blurRadius: 5,
                            offset: Offset(3, 4),
                            spreadRadius: 0,
                          )
                        ], color: Colors.white),
                        child: Row(
                          children: [
                            Text(
                              AppConstants.LANGUAGE_LIST[index].languageName,
                              // style: TextStyles.bodyMedium(context)
                              //     .copyWith(
                              //         fontWeight: FontWeight.w500,
                              //         color: selected
                              //             ? Colors.white
                              //             : Colors.black)
                              // TextStyle(
                              //     fontSize: 16.sp,
                              //     color: selected ? Colors.white : Colors.black),
                            ),
                            const Spacer(),
                            if (selected)
                              //  Transform.scale(
                              // scale: 1.3,
                              Radio(
                                activeColor: Colors.green,
                                value: true,
                                groupValue: true,
                                onChanged: (value) {
                                  // setState(() {
                                  //   selectedLevel = value;
                                  // });
                                },
                              ),
                            // ),
                          ],
                        ).paddingSymmetric(vertical: 12, horizontal: 6),
                      ).paddingSymmetric(vertical: 4),
                    );
                  }),
                );
              }),
              // Center(
              //   child: Image.asset(
              //     "assets/icons/arrow-circle-right.png",
              //     height: 40,
              //     color: Colors.black,
              //   ),
              // ).paddingSymmetric(vertical: 12)
            ],
          ).paddingSymmetric(horizontal: 12),
        ),
      ).paddingAll(16),
    );
  }
}
