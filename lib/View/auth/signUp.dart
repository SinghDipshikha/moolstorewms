import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Controller/authController.dart';
import 'package:moolwmsstore/Data/Model/Auth/signupfield.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/customButton.dart';
import 'package:moolwmsstore/View/common/myTextField.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:moolwmsstore/utils/textutils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  List toAskInWarehouse = [];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List addWarehouse = [];

  Map response = {};
  void submit() {
    if (_formKey.currentState?.validate() ?? false) {}
    Get.find<AuthController>().fields.forEach((element) {
      response[element.field_name] = element.value;
    });

    response["wareHouse"] = addWarehouse;
    Logger().i(response);
    Get.find<AuthController>().signup(response);
    //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation:
      //     isMobile(context) ? FloatingActionButtonLocation.centerDocked : null,
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: CustomButton(
      //     onTap: submit,
      //     //    glow: false,
      //     title: 'next'.tr,
      //   ),
      // ),
      body: SafeArea(
        child: GetBuilder<AuthController>(builder: (authController) {
          return authController.fields.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ))
              : Center(
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                        child: SizedBox(
                      width: 96.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //  const Gap(40),
                          CustomContainer(
                            labelText: "Sign up",
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Wrap(
                                runSpacing: isMobile(context) ? 10 : 20,
                                spacing: 140,
                                children: List.generate(
                                    authController.fields.length, (index) {
                                  SignupField field =
                                      authController.fields[index];
                                  if (field.isShow == 0) {
                                    return Container();
                                  }
                                  if (field.type == "initwarehouse") {
                                    toAskInWarehouse = field.selected_values!;
                                    return Container();
                                  }
                                  onchanged(String? x) {
                                    authController.fields[index] =
                                        authController.fields[index]
                                            .copyWith(value: x);
                                    authController.update();
                                  }

                                  return Container(
                                    constraints: const BoxConstraints(
                                        // maxHeight: 60,
                                        minWidth: 400,
                                        maxWidth: 600),
                                    child: isMobile(context)
                                        ? Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 6),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text.rich(
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            field.field_name.tr,
                                                        style: TextStyles
                                                                .bodyMedium(
                                                                    context)
                                                            .copyWith(
                                                                color: AppColors
                                                                    .primaryColor),
                                                      ),
                                                      if (field.required == 1)
                                                        TextSpan(
                                                          text: '*',
                                                          style: TextStyles
                                                                  .bodyMedium(
                                                                      context)
                                                              .copyWith(
                                                                  color: Colors
                                                                      .red),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                                MyTextField(
                                                  onChanged: onchanged,
                                                  textCapitalization: TextUtils
                                                      .textCapitalization(
                                                          field.type),
                                                  keyboardType:
                                                      TextUtils.keyboardType(
                                                          field.type),
                                                  validator: (val) {
                                                    if (val == null ||
                                                        val.isEmpty) {
                                                      if (field.error_message_on_empt !=
                                                              null &&
                                                          field.required == 1) {
                                                        return field
                                                            .error_message_on_empt;
                                                      } else {
                                                        return null;
                                                      }
                                                    } else if (field
                                                            .invalid_message !=
                                                        null) {
                                                      if (!TextUtils
                                                          .validateTYPE(
                                                              type: field.type,
                                                              val: val)) {
                                                        return (field
                                                            .invalid_message
                                                            ?.tr);
                                                      } else {
                                                        return null;
                                                      }
                                                    }
                                                    return null;
                                                  },
                                                  borderRadius: 4.82,
                                                  labelText: field
                                                      .error_message_on_empt
                                                      ?.tr,
                                                )
                                              ],
                                            ),
                                          )
                                        : Row(
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: Text.rich(
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            field.field_name.tr,
                                                        style: TextStyles
                                                            .bodyMedium(
                                                                context),
                                                      ),
                                                      if (field.required == 1)
                                                        TextSpan(
                                                          text: '*',
                                                          style: TextStyles
                                                                  .bodyMedium(
                                                                      context)
                                                              .copyWith(
                                                                  color: Colors
                                                                      .red),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                  flex: 5,
                                                  child: MyTextField(
                                                    onChanged: onchanged,
                                                    inputFormatters: TextUtils
                                                        .inputFormatters(
                                                            field.type),
                                                    textCapitalization:
                                                        TextUtils
                                                            .textCapitalization(
                                                                field.type),
                                                    keyboardType:
                                                        TextUtils.keyboardType(
                                                            field.type),
                                                    validator: (val) {
                                                      if (val == null ||
                                                          val.isEmpty) {
                                                        if (field.error_message_on_empt !=
                                                                null &&
                                                            field.required ==
                                                                1) {
                                                          return field
                                                              .error_message_on_empt;
                                                        } else {
                                                          return null;
                                                        }
                                                      } else if (field
                                                              .invalid_message !=
                                                          null) {
                                                        if (!TextUtils
                                                            .validateTYPE(
                                                                type:
                                                                    field.type,
                                                                val: val)) {
                                                          return (field
                                                              .invalid_message
                                                              ?.tr);
                                                        } else {
                                                          return null;
                                                        }
                                                      }
                                                      return null;
                                                    },
                                                    borderRadius: 4.82,
                                                    labelText: field
                                                        .error_message_on_empt
                                                        ?.tr,
                                                  )),
                                            ],
                                          ),
                                  );
                                }),
                              ),
                            ),
                          ),

                          ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: addWarehouse.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: CustomContainer(
                                    labelText: "Add new warehouse",
                                    child: ListView.builder(
                                        // scrollDirection: Axis.horizontal,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: toAskInWarehouse.length,
                                        shrinkWrap: true,
                                        itemBuilder: (context, i) {
                                          return Container(
                                            constraints: const BoxConstraints(
                                                // maxHeight: 60,
                                                minWidth: 400,
                                                maxWidth: 600),
                                            child: isMobile(context)
                                                ? Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(vertical: 6),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text.rich(
                                                          TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: toAskInWarehouse[
                                                                        i]
                                                                    .toString()
                                                                    .tr,
                                                                style: TextStyles
                                                                        .bodyMedium(
                                                                            context)
                                                                    .copyWith(
                                                                        color: AppColors
                                                                            .primaryColor),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        MyTextField(
                                                          onChanged: (p0) {
                                                            addWarehouse[index][
                                                                toAskInWarehouse[
                                                                    i]] = p0;
                                                          },
                                                          textCapitalization:
                                                              TextCapitalization
                                                                  .words,

                                                          // maxLength:
                                                          //     TextUtils.length(field.type),
                                                          // initialValue: signupModel.companyName,
                                                          // onSaved: (val) => signupModel.companyName = val,
                                                          validator: (val) {
                                                            if (val == null ||
                                                                val.isEmpty) {
                                                              return "required";
                                                            }
                                                            return null;
                                                          },
                                                          borderRadius: 4.82,
                                                          //labelText: "cascacac",
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                : Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 10),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          flex: 2,
                                                          child: Text.rich(
                                                            TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text: toAskInWarehouse[
                                                                          i]
                                                                      .toString()
                                                                      .tr,
                                                                  style: TextStyles
                                                                      .bodyMedium(
                                                                          context),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                            flex: 5,
                                                            child: MyTextField(
                                                              textCapitalization:
                                                                  TextCapitalization
                                                                      .words,

                                                              // maxLength:
                                                              //     TextUtils.length(field.type),
                                                              // initialValue: signupModel.companyName,
                                                              // onSaved: (val) => signupModel.companyName = val,
                                                              // validator: (val) {
                                                              //   if (val == null ||
                                                              //       val.isEmpty) {
                                                              //     return false;
                                                              //   }
                                                              // },
                                                              borderRadius:
                                                                  4.82,
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                          );
                                        }),
                                  ),
                                );
                              }),
                          !isMobile(context) ? const Gap(10) : Container(),
                          Row(
                            mainAxisAlignment: isMobile(context)
                                ? MainAxisAlignment.center
                                : MainAxisAlignment.spaceBetween,
                            children: [
                              CustomButton(
                                onTap: () {
                                  // int i = addWarehouse.length;

                                  // addWarehouse[i] = {};
                                  // for (var element in toAskInWarehouse) {
                                  //   addWarehouse[i][element] = "";
                                  // }
                                  setState(() {
                                    addWarehouse.add({});
                                  });
                                },
                                leftIcon: "assets/icons/Add Red.png",
                                width: isMobile(context) ? 84.w : 400,
                                title: 'Add New Warehouse',
                                glow: false,
                                //width: 100,
                              ),
                              isMobile(context)
                                  ? Container()
                                  : CustomButton(
                                      rightIcon: "assets/icons/Arrow_right.png",
                                      title: "Next",
                                      onTap: submit,
                                    )
                            ],
                          ),

                          const Gap(20),
                          if (isMobile(context))
                            CustomButton(
                              rightIcon: "assets/icons/Arrow_right.png",
                              width: 84.w,
                              onTap: submit,
                              //    glow: false,
                              title: 'next'.tr,
                            ),
                          const Gap(20),
                        ],
                      ),
                    )),
                  ),
                );
        }),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String labelText;
  Widget? child;
  CustomContainer({
    super.key,
    required this.labelText,
    this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            top: Adaptive.sp(14),
          ),
          child: Container(
            width: 96.w,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    width: 5,
                    color: isMobile(context)
                        ? AppColors.scaffoldBackgroundColor
                        : AppColors.primaryColor),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 20),
              child: child,
            ),
          ),
        ),
        Container(
                // alignment: Alignment.center,
                color: AppColors.scaffoldBackgroundColor,
                child: Text(
                  labelText,
                  style: TextStyles.titleMedium(context),
                ).paddingSymmetric(horizontal: 10))
            .paddingOnly(left: 20)
      ],
    );
  }
}
