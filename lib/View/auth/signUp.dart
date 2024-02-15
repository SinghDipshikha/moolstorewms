import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/authController.dart';
import 'package:moolwmsstore/Controller/localization_controller.dart';
import 'package:moolwmsstore/Data/Model/Auth/signupfield.dart';
import 'package:moolwmsstore/View/common/animated_dialog.dart';
import 'package:moolwmsstore/View/common/customButton.dart';
import 'package:moolwmsstore/View/common/loadingWidget.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';
import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:moolwmsstore/utils/textfielddecoration.dart';
import 'package:moolwmsstore/utils/textutils.dart';

@RoutePage()
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isAgreeTermsAndCondition = true;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(initState: (state) {
      Get.find<AuthController>().getSignupFields();
    }, builder: (authController) {
      return Scaffold(
          // floatingActionButtonLocation:
          //     FloatingActionButtonLocation.centerDocked,
          // floatingActionButton: CustomButton(
          //   glow: isAgreeTermsAndCondition,
          //   title: 'get_started'.tr,
          //   onTap: () {
          //     if (isAgreeTermsAndCondition) {
          //       _formKey.currentState!.validate();
          //       // context.pushRoute(const AddWarehouseRoute());
          //     }
          //   },
          // ),
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
                                                            BorderRadius
                                                                .circular(12),
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
          body: authController.signupFields.isEmpty
              ? const LoadingWidget()
              : Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: [
                          Center(
                            child: Text("signup".tr,
                                textAlign: TextAlign.center,
                                style:
                                    Theme.of(context).textTheme.headlineSmall),
                          ),
                          const SizedBox(height: 8),
                          Center(
                            child: Text(
                                "enter_your_details_to_Create_your_account".tr,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyMedium
                                // .copyWith(color: ColorConstants.GREY_DARK)
                                ),
                          ),
                          const SizedBox(height: 32),
                          Column(
                            children: List.generate(
                                authController.signupFields.length, (index) {
                              SignupField field =
                                  authController.signupFields[index];
                              return TextFormField(
                                onTapOutside: (event) {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                textCapitalization:
                                    TextUtils.textCapitalization(field.type),
                                keyboardType:
                                    TextUtils.keyboardType(field.type),
                                maxLength: TextUtils.length(field.type),
                                // initialValue: signupModel.companyName,
                                // onSaved: (val) => signupModel.companyName = val,
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    if (field.error_message_on_empt != null) {
                                      return field.error_message_on_empt!.tr;
                                    } else {
                                      return null;
                                    }
                                  } else if (field.invalid_message != null) {
                                    if (!TextUtils.validateTYPE(
                                        type: field.type, val: val)) {
                                      return field.invalid_message!.tr;
                                    } else {
                                      return null;
                                    }
                                  }
                                  return null;
                                },
                                decoration:
                                    DecorationUtils.getTextFieldDecoration(
                                  context: context,
                                  labelText: field.field_name.tr,
                                ),
                              ).paddingSymmetric(vertical: 10);
                            }),
                          ),

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
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium),
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
                                              color: Theme.of(context)
                                                  .primaryColor)),
                                  TextSpan(
                                      text: " and ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium),
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
                                              color: Theme.of(context)
                                                  .primaryColor)),
                                ])),
                              )
                            ],
                          ),
                          // const SizedBox(height: 18),

                          // const SizedBox(height: 8),
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
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w700)),
                                  ))
                            ],
                          ),
                          CustomButton(
                            glow: isAgreeTermsAndCondition,
                            title: 'get_started'.tr,
                            onTap: () {
                              if (isAgreeTermsAndCondition) {
                                // _formKey.currentState!.validate();
                                context.pushRoute(const AddWarehouseRoute());
                              }
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ));
    });
  }
}
