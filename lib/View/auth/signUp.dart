import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/localization_controller.dart';
import 'package:moolwmsstore/View/Admin/GMSDashboard.dart';
import 'package:moolwmsstore/View/base/animated_dialog.dart';
import 'package:moolwmsstore/View/base/customButton.dart';
import 'package:moolwmsstore/appConstants.dart';
import 'package:moolwmsstore/helper/route_helper.dart';
import 'package:moolwmsstore/utils/textfielddecoration.dart';
import 'package:moolwmsstore/utils/textutils.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage() 
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool passObscure = true, rePassObscure = true;
  bool isAgreeTermsAndCondition = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
            "assets/images/moolcode_logo.png",
            height: kToolbarHeight * 0.9,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: PopupMenuButton(
                child: const Icon(
                  Icons.more_vert,
                ),
                onSelected: (val) async {
                  if (val == "CHANGE_LANGUAGE ".tr) {
                    showAnimatedDialog(
                        animationType: DialogTransitionType.slideFromLeftFade,
                        barrierDismissible: true,
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('select_your_language'.tr),
                            content: GetBuilder<LocalizationController>(
                                builder: (localizationController) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'please_select_your_prefer_languages'.tr,
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
                                                  Navigator.of(context).pop();
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      color: localizationController
                                                                  .locale
                                                                  .languageCode ==
                                                              AppConstants
                                                                  .LANGUAGE_LIST[
                                                                      index]
                                                                  .languageCode
                                                          ? Theme.of(context)
                                                              .primaryColor
                                                          : null),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            13.0),
                                                    child: Text(
                                                      AppConstants
                                                          .LANGUAGE_LIST[index]
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
                  } else if (val == "CHAT_SUPPORT ".tr) {
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
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Center(
                    child: Text("signup".tr,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: Text("enter_your_details_to_Create_your_account".tr,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium
                        // .copyWith(color: ColorConstants.GREY_DARK)
                        ),
                  ),
                  const SizedBox(height: 32),
                  TextFormField(
                    // initialValue: signupModel.companyName,
                    // onSaved: (val) => signupModel.companyName = val,
                    validator: (val) {
                      if (val == null) {
                        return "enter_company_name".tr;
                      }
                      return null;
                    },
                    decoration: DecorationUtils.getTextFieldDecoration(
                      context: context,
                      labelText: "company_name".tr,
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    //  onSaved: (val) => signupModel.fullName = val,
                    validator: (val) {
                      if (val == null) {
                        return "enter_full_name".tr;
                      }
                      return null;
                    },
                    decoration: DecorationUtils.getTextFieldDecoration(
                      context: context,
                      labelText: "full_name".tr,
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    //   initialValue: signupModel.panNo,
                    textCapitalization: TextCapitalization.characters,
                    //  onSaved: (val) => signupModel.panNo = val.toUpperCase(),
                    validator: (val) {
                      if (val == null) {
                        return "enter_pan_number".tr;
                      } else if (!TextUtils.isValidPAN(val)) {
                        return "enter_valid_pan_number".tr;
                      }
                      return null;
                    },
                    maxLength: 10,
                    decoration: DecorationUtils.getTextFieldDecoration(
                            context: context, labelText: "pan_number".tr)
                        .copyWith(),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    validator: (val) {
                      if (val == null) {
                        return "enter_mobile_number".tr;
                      } else if (val.length < 6) {
                        return "enter_valid_mobile_number".tr;
                      }
                      return null;
                    },
                    // initialValue: signupModel.mobileNo.number,
                    // onSaved: (val) => signupModel.mobileNo.number = val,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: false),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: DecorationUtils.getTextFieldDecoration(
                      context: context, labelText: "mobile_number".tr,
                      // prefixIcon: CountryPicker(
                      //     showDialingCode: true,
                      //     showName: false,
                      //     dense: true,
                      //     selectedCountry: signupModel.mobileNo.countryCode,
                      //     onChanged: (country) {
                      //       setState(() {
                      //         signupModel.mobileNo.countryCode = country;
                      //       });
                      //     }),
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    // initialValue: signupModel.emailId,
                    // onSaved: (val) => signupModel.emailId = val,
                    validator: (val) {
                      if (val == null) {
                        return "enter_email_address".tr;
                      } else if (!TextUtils.isValidEmail(val)) {
                        return "enter_valid_email_address".tr;
                      }
                      return null;
                    },
                    decoration: DecorationUtils.getTextFieldDecoration(
                      context: context,
                      labelText: "email_address".tr,
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    // initialValue: signupModel.password,
                    // onSaved: (val) => signupModel.password = val,
                    validator: (val) {
                      if (val == null) {
                        return "enter_password".tr;
                      } else if (val.length < 8) {
                        return "must_contain_at_least_8_characters".tr;
                      } else if (!val.contains(RegExp(r'[A-Z]'))) {
                        return "must_contain_at_least_one_uppercase_character"
                            .tr;
                      } else if (!val.contains(RegExp(r'[a-z]'))) {
                        return "must_contain_at_least_one_lowercase_character"
                            .tr;
                      } else if (!val.contains(RegExp(r'[0-9]'))) {
                        return "must_contain_one_number".tr;
                      } else if (!val
                          .contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                        return "must_contain_at_least_one_special_character".tr;
                      }
                      //  signupModel.password = val;
                      return null;
                    },
                    obscureText: passObscure,
                    decoration: DecorationUtils.getTextFieldDecoration(
                      context: context,
                      labelText: "password".tr,
                    ).copyWith(
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passObscure = !passObscure;
                          });
                        },
                        child: Icon(
                          passObscure ? Icons.visibility_off : Icons.visibility,
                          color: ColorConstants.GREY_DARK,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    validator: (val) {
                      if (val == null) {
                        return "enter_confirm_password".tr;
                      }
                      // else if (val != signupModel.password) {
                      //   return
                      //     "confirm_password_doesnt_match".tr;
                      // }
                      return null;
                    },
                    // initialValue: signupModel.password,
                    obscureText: rePassObscure,
                    decoration: DecorationUtils.getTextFieldDecoration(
                      context: context,
                      labelText: "confirm_password".tr,
                    ).copyWith(
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            rePassObscure = !rePassObscure;
                          });
                        },
                        child: Icon(
                          rePassObscure
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: ColorConstants.GREY_DARK,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text("password_requirements".tr,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text("must_contain_at_least_8_characters".tr,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Theme.of(context).hintColor)),
                  Text("must_contain_at_least_one_uppercase_character".tr,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Theme.of(context).hintColor)),
                  Text("must_contain_at_least_one_lowercase_character".tr,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Theme.of(context).hintColor)),
                  Text("must_contain_one_number".tr,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Theme.of(context).hintColor)),
                  Text("must_contain_at_least_one_special_character".tr,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Theme.of(context).hintColor)),
                  const SizedBox(height: 18),
                  Row(
                    children: [
                      SizedBox(
                          width: 20,
                          height: 20,
                          child: Checkbox(
                              value: isAgreeTermsAndCondition,
                              onChanged: (val) {
                                setState(() {
                                  isAgreeTermsAndCondition =
                                      !isAgreeTermsAndCondition;
                                });
                              })),
                      const SizedBox(width: 8),
                      Expanded(
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'i_agree_with_the'.tr,
                              style: Theme.of(context).textTheme.bodyMedium),
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  // if (await canLaunch(
                                  //     AppConstants.TNC_LINK)) {
                                  //   await launch(AppConstants.TNC_LINK);
                                  // }
                                },
                              text: 'terms_and_conditions'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Theme.of(context).primaryColor)),
                          TextSpan(
                              text: " and ",
                              style: Theme.of(context).textTheme.bodyMedium),
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  // if (await canLaunch(
                                  //     AppConstants.POLICY_LINK)) {
                                  //   await launch(AppConstants.POLICY_LINK);
                                  // }
                                },
                              text: 'privacy_policy'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Theme.of(context).primaryColor)),
                        ])),
                      )
                    ],
                  ),
                  const SizedBox(height: 18),
                  CustomButton(
                    title: 'get_started'.tr,
                    onTap: () {
                      Get.to(RouteHelper.gMSDashboard);
                    },
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("already_have_an_account".tr,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontWeight: FontWeight.w700)),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("login".tr,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w700)),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
