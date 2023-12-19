import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/localization_controller.dart';
import 'package:moolwmsstore/View/base/animated_dialog.dart';
import 'package:moolwmsstore/appConstants.dart';
import 'package:platform_detector/platform_detector.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormFieldState> _mobNoKey = GlobalKey<FormFieldState>();
  CountryCode? value;
  @override
  Widget build(BuildContext context) {
    final countryPicker = FlCountryCodePicker(
        countryTextStyle: Theme.of(context).textTheme.labelSmall);
    return Scaffold(
      appBar: isMobile()
          ? AppBar(
              centerTitle: true,
              title: Image.asset(
                "assets/images/moolcode_logo.png",
                height: kToolbarHeight * 0.9,
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: PopupMenuButton(
                    child: const Icon(Icons.more_vert),
                    onSelected: (val) async {
                      if (val == "CHANGE_LANGUAGE") {
                        showAnimatedDialog(
                            animationType:
                                DialogTransitionType.slideFromLeftFade,
                            barrierDismissible: true,
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('select_your_language'.tr),
                                content: GetBuilder<LocalizationController>(
                                    builder: (localizationController) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'please_select_your_prefer_languages'
                                            .tr,
                                        style: TextStyle(
                                            color: Theme.of(context).hintColor),
                                      ),
                                      const Gap(10),
                                      Wrap(
                                        children: List.generate(
                                            AppConstants.LANGUAGE_LIST.length,
                                            (index) => Padding(
                                                  padding:
                                                      const EdgeInsets.all(3.0),
                                                  child: InkWell(
                                                    onTap: () {
                                                      localizationController
                                                          .setLanguage(Locale(
                                                              AppConstants
                                                                  .LANGUAGE_LIST[
                                                                      index]
                                                                  .languageCode));
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                          color: localizationController
                                                                      .locale
                                                                      .languageCode ==
                                                                  AppConstants
                                                                      .LANGUAGE_LIST[
                                                                          index]
                                                                      .languageCode
                                                              ? Theme.of(
                                                                      context)
                                                                  .primaryColor
                                                              : null),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(13.0),
                                                        child: Text(
                                                          AppConstants
                                                              .LANGUAGE_LIST[
                                                                  index]
                                                              .languageName,
                                                          style: localizationController
                                                                      .locale
                                                                      .languageCode ==
                                                                  AppConstants
                                                                      .LANGUAGE_LIST[
                                                                          index]
                                                                      .languageCode
                                                              ? TextStyle(
                                                                  color: Theme.of(
                                                                          context)
                                                                      .cardColor)
                                                              : null,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )),
                                      ),
                                    ],
                                  );
                                }),
                              );
                            });
                        // Navigator.of(context).pushNamed('/changelanguage');
                      } else if (val == "CHAT_SUPPORT") {
                        // await FlutterFreshchat.showConversations(
                        //     title: 'MoolWMS Chat Support');
                      }
                    },
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                          value: "CHANGE_LANGUAGE",
                          child: Row(children: <Widget>[
                            Icon(Icons.translate,
                                size: 20, color: Colors.grey[700]),
                            const SizedBox(width: 8),
                            Text("change_language".tr)
                          ]),
                        ),
                        PopupMenuItem(
                          value: "CHAT_SUPPORT",
                          child: Row(children: <Widget>[
                            Icon(Icons.live_help,
                                size: 20, color: Colors.grey[700]),
                            const SizedBox(width: 8),
                            Text("chat_support".tr)
                          ]),
                        )
                      ];
                    },
                  ),
                ),
              ],
            )
          : null,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              "assets/images/verification.svg",
              width: 100,
            ),
          ),
          const SizedBox(height: 18),
          Text("login".tr,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 4),
          Text("enter_your_details_to_login_to_your_account".tr,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Theme.of(context).hintColor)),
          const SizedBox(height: 32),
          // Text("mobile_number".tr,
          //     style: Theme.of(context)
          //         .textTheme
          //         .titleMedium
          //         ?.copyWith(fontWeight: FontWeight.w700)),
          // const Gap(10),
          TextFormField(
            key: _mobNoKey,
            validator: (val) {
              if (val == null) {
                return "enter_mobile_number".tr;
              } else if (val.length < 6) {
                return "enter_valid_mobile_number".tr;
              }
              return null;
            },
            onSaved: (val) {
              //  mobileNo.number = val;
            },
            maxLength: 10,
            keyboardType: const TextInputType.numberWithOptions(decimal: false),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
                labelText: "mobile_number".tr,
                labelStyle: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.w700),
                // prefixIcon: GestureDetector(
                //   onTap: () async {
                //     // Show the country code picker when tapped.
                //     value = await countryPicker.showPicker(context: context);
                //     //   picked.
                //     // Null check
                //   },
                //   child: Container(
                //     padding: const EdgeInsets.symmetric(
                //         horizontal: 8.0, vertical: 4.0),
                //     margin: const EdgeInsets.symmetric(horizontal: 8.0),
                //     decoration: BoxDecoration(
                //         color: Theme.of(context).primaryColor,
                //         borderRadius:
                //             const BorderRadius.all(Radius.circular(5.0))),
                //     child: const Text('Show Picker',
                //         style: TextStyle(color: Colors.white)),
                //   ),
                // ),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
          ),
        ],
      ),
    );
  }
}
