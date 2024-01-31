import 'package:auto_route/auto_route.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/localization_controller.dart';
import 'package:moolwmsstore/View/auth/verifyOtp.dart';
import 'package:moolwmsstore/View/base/animated_dialog.dart';
import 'package:moolwmsstore/View/base/customButton.dart';
import 'package:moolwmsstore/View/base/myTextField.dart';
import 'package:moolwmsstore/appConstants.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';
import 'package:platform_detector/platform_detector.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isOtp = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormFieldState> _mobNoKey = GlobalKey<FormFieldState>();
  CountryCode? value;
  bool passObscure = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
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
                    child: Icon(
                      Icons.more_vert,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    onSelected: (val) async {
                      if (val == "CHANGE_LANGUAGE") {
                        showAnimatedDialog(
                            animationType:
                                DialogTransitionType.slideFromLeftFade,
                            barrierDismissible: true,
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: Theme.of(context).cardColor,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(height * 0.08),
              Center(
                child: SvgPicture.asset(
                  "assets/images/verification.svg",
                  width: height * 0.38,
                ),
              ),
              isOtp
                  ? const VerifyOtp()
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
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
                        const Gap(10),
                        MyTextField(
                          labelText: "mobile_number".tr,
                          maxLength: 10,
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: false),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          validator: (val) {
                            if (val == null) {
                              return "enter_mobile_number".tr;
                            } else if (val.length < 6) {
                              return "enter_valid_mobile_number".tr;
                            }
                            return null;
                          },
                        ),
                        MyTextField(
                          padding: EdgeInsets.zero,
                          labelText: "enter_password".tr,
                          validator: (val) {
                            if (val == null) {
                              return "enter_password".tr;
                            }
                            return null;
                          },
                          obscureText: passObscure,
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                passObscure = !passObscure;
                              });
                            },
                            child: Icon(
                              passObscure
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: ColorConstants.GREY_DARK,
                            ),
                          ),
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("forgot_password?".tr,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w700))
                          ],
                        ),

                        const Gap(25),
                        CustomButton(
                          onTap: () {
                            setState(() {
                              isOtp = true;
                            });
                          },
                          title: 'login'.tr,
                          width: 200,
                        ),
                        // const Gap(10),
                        Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text("did_not_have_an_account_yet".tr,
                                style: Theme.of(context).textTheme.bodyLarge!),
                            InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 10),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              child: Text(
                                                "select_role".tr,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge!
                                                    .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                            ),
                                            const Gap(10),
                                            InkWell(
                                              onTap: () {
                                                Navigator.of(context).pop();
                                                showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return AlertDialog(
                                                      backgroundColor:
                                                          Theme.of(context)
                                                              .cardColor,
                                                      actions: [
                                                        InkWell(
                                                          onTap: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child: Text(
                                                            "ok".tr,
                                                          ),
                                                        )
                                                      ],
                                                      content: Text(
                                                        "please_contact_respective_warehouse_owner_to_get_the_login_credentials"
                                                            .tr,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .titleMedium,
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Container(
                                                margin: const EdgeInsets.all(4),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                        width: 1),
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                8))),
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.person,
                                                        color: Theme.of(context)
                                                            .primaryColor),
                                                    const SizedBox(width: 12),
                                                    Expanded(
                                                      child: Text(
                                                        "i_am_an_individual_logging_in_to_view_my_person_in_and_out_at_various_locations_using_MoolWMS"
                                                            .tr,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .titleSmall,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const Gap(10),
                                            InkWell(
                                              splashColor: Theme.of(context)
                                                  .primaryColor,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(8)),
                                              onTap: () {
                                                context.pushRoute(
                                                    const SelectUsageRoute());
                                                // Get.to(const SignUp());
                                              },
                                              child: Container(
                                                margin: const EdgeInsets.all(4),
                                                padding:
                                                    const EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                        width: 1),
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                8))),
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.location_city,
                                                        color: Theme.of(context)
                                                            .primaryColor),
                                                    const SizedBox(width: 12),
                                                    Expanded(
                                                      child: Text(
                                                        "I am a warehouse owner, wishing to manage and view warehouses using MoolWMS for which I am authorised.",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .titleSmall,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const Gap(20),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("sign_up".tr,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontWeight: FontWeight.w700)),
                                ))
                          ],
                        )
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}
