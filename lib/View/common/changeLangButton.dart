import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/localization_controller.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/animated_dialog.dart';
import 'package:moolwmsstore/utils/appConstants.dart';

class ChangeLangButton extends StatelessWidget {
  const ChangeLangButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showAnimatedDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.white,
                  // backgroundColor: Theme.of(context)
                  //     .scaffoldBackgroundColor,
                  content: GetBuilder<LocalizationController>(
                      builder: (localizationController) {
                    return Wrap(
                      children: List.generate(AppConstants.LANGUAGE_LIST.length,
                          (index) {
                        bool selected =
                            localizationController.locale.languageCode ==
                                AppConstants
                                    .LANGUAGE_LIST[index].language.languageCode;

                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              localizationController.setLanguage(Locale(
                                  AppConstants.LANGUAGE_LIST[index].language
                                      .languageCode));
                              //  Logger().i(AppLocalizations.of(context).lancode);

                              Navigator.pop(context);
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
                                  AppConstants
                                      .LANGUAGE_LIST[index].languageName,
                                  style: TextStyles.bodyMedium(context).copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: selected
                                          ? Colors.white
                                          : Colors.black)
                                  // TextStyle(
                                  //     fontSize: 16.sp,
                                  //     color: selected ? Colors.white : Colors.black),
                                  ),
                            ),
                          ),
                        );
                      }),
                    );
                  }),
                );
              });
        },
        icon: const Icon(
          Icons.more_vert,
          size: 40,
        ));
  }
}
