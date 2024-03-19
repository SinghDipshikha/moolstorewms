import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/localization_controller.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/customButton.dart';
import 'package:moolwmsstore/utils/appConstants.dart';
@RoutePage()  
class Chooselanguage extends StatelessWidget {
  const Chooselanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          kIsWeb ? null : FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomButton(
        onTap: () {
        //  context.replaceRoute(const PhoneSignRoute());
        },
        //    glow: false,
        title: 'next'.tr,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'select_your_language'.tr,
              style: TextStyles.titleMedium(context),
              textAlign: TextAlign.center,
            ),
            Text(
              'please_select_your_prefer_languages'.tr,
              style: TextStyles.bodysmall(context),
            ),
            GetBuilder<LocalizationController>(builder: (localizeController) {
              return Wrap(
                children:
                    List.generate(AppConstants.LANGUAGE_LIST.length, (index) {
                  bool selected = localizeController.locale.languageCode ==
                      AppConstants.LANGUAGE_LIST[index].language.languageCode;

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        localizeController.setLanguage(Locale(
                          AppConstants.LANGUAGE_LIST[index].languageCode,
                        ));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 12),
                        decoration: BoxDecoration(boxShadow: const [
                          BoxShadow(
                            color: Color(0x0C000000),
                            blurRadius: 5,
                            offset: Offset(3, 4),
                            spreadRadius: 0,
                          )
                        ], color: selected ? Colors.black : Colors.white),
                        child: Text(
                            AppConstants.LANGUAGE_LIST[index].languageName,
                            style: TextStyles.bodyMedium(context).copyWith(
                                fontWeight: FontWeight.w500,
                                color: selected ? Colors.white : Colors.black)
                            // TextStyle(
                            //     fontSize: 16.sp,
                            //     color: selected ? Colors.white : Colors.black),
                            ),
                      ),
                    ),
                  );
                }),
              );
            })
          ],
        ),
      ),
    );
  }
}
