// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:get/get.dart';
// import 'package:logger/logger.dart';
// import 'package:moolwmsstore/Controller/authController.dart';
// import 'package:moolwmsstore/Data/Model/Auth/signupfield.dart';
// import 'package:moolwmsstore/View/Styles/Styles..dart';
// import 'package:moolwmsstore/View/common/customButton.dart';
// import 'package:moolwmsstore/View/common/myTextField.dart';
// import 'package:moolwmsstore/utils/dimensions.dart';
// import 'package:moolwmsstore/utils/textutils.dart';

// @RoutePage()
// class Signup extends StatefulWidget {
//   const Signup({super.key});

//   @override
//   State<Signup> createState() => _SignupState();
// }

// class _SignupState extends State<Signup> {
//   List toAskInWarehouse = [];
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   List addWarehouse = [];

//   Map response = {};
//   void submit() {
//     if (_formKey.currentState?.validate() ?? false) {}
//     Get.find<AuthController>().fields.forEach((element) {
//       response[element.field_name] = element.value;
//     });

//     response["wareHouse"] = addWarehouse;
//     Logger().i(response);
//     Get.find<AuthController>().signup(response);
//     //
//   }

//   @override
//   Widget build(BuildContext context) {
//       final double height = MediaQuery.sizeOf(context).height ;
//     final double width = MediaQuery.sizeOf(context).width ;
//     return Scaffold(
//       // floatingActionButtonLocation:
//       //     context.isPhone ? FloatingActionButtonLocation.centerDocked : null,
//       // floatingActionButton: Padding(
//       //   padding: const EdgeInsets.all(8.0),
//       //   child: CustomButton(
//       //     onTap: submit,
//       //     //    glow: false,
//       //     title: 'next'.tr,
//       //   ),
//       // ),
//       body: SafeArea(
//         child: GetBuilder<AuthController>(builder: (authController) {
//           return authController.fields.isEmpty
//               ? Center(
//                   child: CircularProgressIndicator(
//                   color: AppColors.primaryColor,
//                 ))
//               : Center(
//                   child: Form(
//                     key: _formKey,
//                     child: SingleChildScrollView(
//                         child: SizedBox(
//                       width: 0.96 * width,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           //  const Gap(40),
//                           CustomContainer(
//                             labelText: "Sign up",
//                             child: Padding(
//                               padding: const EdgeInsets.symmetric(vertical: 10),
//                               child: Wrap(
//                                 runSpacing: context.isPhone ? 10 : 20,
//                                 spacing: 140,
//                                 children: List.generate(
//                                     authController.fields.length, (index) {
//                                   SignupField field =
//                                       authController.fields[index];
//                                   if (field.isShow == 0) {
//                                     return Container();
//                                   }
//                                   if (field.type == "initwarehouse") {
//                                     toAskInWarehouse = field.selected_values!;
//                                     return Container();
//                                   }
//                                   onchanged(String? x) {
//                                     authController.fields[index] =
//                                         authController.fields[index]
//                                             .copyWith(value: x);
//                                     authController.update();
//                                   }

//                                   return Container(
//                                     constraints: const BoxConstraints(
//                                         // maxHeight: 60,
//                                         minWidth: 400,
//                                         maxWidth: 600),
//                                     child: context.isPhone
//                                         ? Padding(
//                                             padding: const EdgeInsets.symmetric(
//                                                 vertical: 6),
//                                             child: Column(
//                                               mainAxisSize: MainAxisSize.min,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Text.rich(
//                                                   TextSpan(
//                                                     children: [
//                                                       TextSpan(
//                                                         text:
//                                                             field.field_name.tr,
//                                                         style: TextStyles
//                                                                 .bodyMedium(
//                                                                     context)
//                                                             .copyWith(
//                                                                 color: AppColors
//                                                                     .primaryColor),
//                                                       ),
//                                                       if (field.required == 1)
//                                                         TextSpan(
//                                                           text: '*',
//                                                           style: TextStyles
//                                                                   .bodyMedium(
//                                                                       context)
//                                                               .copyWith(
//                                                                   color: Colors
//                                                                       .red),
//                                                         ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                                 MyTextField(
//                                                   onChanged: onchanged,
//                                                   textCapitalization: TextUtils
//                                                       .textCapitalization(
//                                                           field.type),
//                                                   keyboardType:
//                                                       TextUtils.keyboardType(
//                                                           field.type),
//                                                   validator: (val) {
//                                                     if (val == null ||
//                                                         val.isEmpty) {
//                                                       if (field.error_message_on_empt !=
//                                                               null &&
//                                                           field.required == 1) {
//                                                         return field
//                                                             .error_message_on_empt;
//                                                       } else {
//                                                         return null;
//                                                       }
//                                                     } else if (field
//                                                             .invalid_message !=
//                                                         null) {
//                                                       if (!TextUtils
//                                                           .validateTYPE(
//                                                               type: field.type,
//                                                               val: val)) {
//                                                         return (field
//                                                             .invalid_message
//                                                             ?.tr);
//                                                       } else {
//                                                         return null;
//                                                       }
//                                                     }
//                                                     return null;
//                                                   },
//                                                   borderRadius: 4.82,
//                                                   labelText: field
//                                                       .error_message_on_empt
//                                                       ?.tr,
//                                                 )
//                                               ],
//                                             ),
//                                           )
//                                         : Row(
//                                             children: [
//                                               Expanded(
//                                                 flex: 2,
//                                                 child: Text.rich(
//                                                   TextSpan(
//                                                     children: [
//                                                       TextSpan(
//                                                         text:
//                                                             field.field_name.tr,
//                                                         style: TextStyles
//                                                             .bodyMedium(
//                                                                 context),
//                                                       ),
//                                                       if (field.required == 1)
//                                                         TextSpan(
//                                                           text: '*',
//                                                           style: TextStyles
//                                                                   .bodyMedium(
//                                                                       context)
//                                                               .copyWith(
//                                                                   color: Colors
//                                                                       .red),
//                                                         ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ),
//                                               Expanded(
//                                                   flex: 5,
//                                                   child: MyTextField(
//                                                     onChanged: onchanged,
//                                                     inputFormatters: TextUtils
//                                                         .inputFormatters(
//                                                             field.type),
//                                                     textCapitalization:
//                                                         TextUtils
//                                                             .textCapitalization(
//                                                                 field.type),
//                                                     keyboardType:
//                                                         TextUtils.keyboardType(
//                                                             field.type),
//                                                     validator: (val) {
//                                                       if (val == null ||
//                                                           val.isEmpty) {
//                                                         if (field.error_message_on_empt !=
//                                                                 null &&
//                                                             field.required ==
//                                                                 1) {
//                                                           return field
//                                                               .error_message_on_empt;
//                                                         } else {
//                                                           return null;
//                                                         }
//                                                       } else if (field
//                                                               .invalid_message !=
//                                                           null) {
//                                                         if (!TextUtils
//                                                             .validateTYPE(
//                                                                 type:
//                                                                     field.type,
//                                                                 val: val)) {
//                                                           return (field
//                                                               .invalid_message
//                                                               ?.tr);
//                                                         } else {
//                                                           return null;
//                                                         }
//                                                       }
//                                                       return null;
//                                                     },
//                                                     borderRadius: 4.82,
//                                                     labelText: field
//                                                         .error_message_on_empt
//                                                         ?.tr,
//                                                   )),
//                                             ],
//                                           ),
//                                   );
//                                 }),
//                               ),
//                             ),
//                           ),

//                           ListView.builder(
//                               physics: const NeverScrollableScrollPhysics(),
//                               shrinkWrap: true,
//                               itemCount: addWarehouse.length,
//                               itemBuilder: (context, index) {
//                                 return Padding(
//                                   padding:
//                                       const EdgeInsets.symmetric(vertical: 10),
//                                   child: CustomContainer(
//                                     labelText: "Add new warehouse".tr,
//                                     child: ListView.builder(
//                                         // scrollDirection: Axis.horizontal,
//                                         physics:
//                                             const NeverScrollableScrollPhysics(),
//                                         itemCount: toAskInWarehouse.length,
//                                         shrinkWrap: true,
//                                         itemBuilder: (context, i) {
//                                           return Container(
//                                             constraints: const BoxConstraints(
//                                                 // maxHeight: 60,
//                                                 minWidth: 400,
//                                                 maxWidth: 600),
//                                             child: context.isPhone
//                                                 ? Padding(
//                                                     padding: const EdgeInsets
//                                                         .symmetric(vertical: 6),
//                                                     child: Column(
//                                                       mainAxisSize:
//                                                           MainAxisSize.min,
//                                                       crossAxisAlignment:
//                                                           CrossAxisAlignment
//                                                               .start,
//                                                       children: [
//                                                         Text.rich(
//                                                           TextSpan(
//                                                             children: [
//                                                               TextSpan(
//                                                                 text: toAskInWarehouse[
//                                                                         i]
//                                                                     .toString()
//                                                                     .tr,
//                                                                 style: TextStyles
//                                                                         .bodyMedium(
//                                                                             context)
//                                                                     .copyWith(
//                                                                         color: AppColors
//                                                                             .primaryColor),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ),
//                                                         MyTextField(
//                                                           onChanged: (p0) {
//                                                             addWarehouse[index][
//                                                                 toAskInWarehouse[
//                                                                     i]] = p0;
//                                                           },
//                                                           textCapitalization:
//                                                               TextCapitalization
//                                                                   .words,

//                                                           // maxLength:
//                                                           //     TextUtils.length(field.type),
//                                                           // initialValue: signupModel.companyName,
//                                                           // onSaved: (val) => signupModel.companyName = val,
//                                                           validator: (val) {
//                                                             if (val == null ||
//                                                                 val.isEmpty) {
//                                                               return "required";
//                                                             }
//                                                             return null;
//                                                           },
//                                                           borderRadius: 4.82,
//                                                           //labelText: "cascacac",
//                                                         )
//                                                       ],
//                                                     ),
//                                                   )
//                                                 : Padding(
//                                                     padding: const EdgeInsets
//                                                         .symmetric(
//                                                         vertical: 10),
//                                                     child: Row(
//                                                       children: [
//                                                         Expanded(
//                                                           flex: 2,
//                                                           child: Text.rich(
//                                                             TextSpan(
//                                                               children: [
//                                                                 TextSpan(
//                                                                   text: toAskInWarehouse[
//                                                                           i]
//                                                                       .toString()
//                                                                       .tr,
//                                                                   style: TextStyles
//                                                                       .bodyMedium(
//                                                                           context),
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         Expanded(
//                                                             flex: 5,
//                                                             child: MyTextField(
//                                                               textCapitalization:
//                                                                   TextCapitalization
//                                                                       .words,

//                                                               // maxLength:
//                                                               //     TextUtils.length(field.type),
//                                                               // initialValue: signupModel.companyName,
//                                                               // onSaved: (val) => signupModel.companyName = val,
//                                                               // validator: (val) {
//                                                               //   if (val == null ||
//                                                               //       val.isEmpty) {
//                                                               //     return false;
//                                                               //   }
//                                                               // },
//                                                               borderRadius:
//                                                                   4.82,
//                                                             )),
//                                                       ],
//                                                     ),
//                                                   ),
//                                           );
//                                         }),
//                                   ),
//                                 );
//                               }),
//                           !context.isPhone ? const Gap(10) : Container(),
//                           Row(
//                             mainAxisAlignment: context.isPhone
//                                 ? MainAxisAlignment.center
//                                 : MainAxisAlignment.spaceBetween,
//                             children: [
//                               CustomButton(
//                                 onTap: () {
//                                   // int i = addWarehouse.length;

//                                   // addWarehouse[i] = {};
//                                   // for (var element in toAskInWarehouse) {
//                                   //   addWarehouse[i][element] = "";
//                                   // }
//                                   setState(() {
//                                     addWarehouse.add({});
//                                   });
//                                 },
//                                 leftIcon: "assets/icons/Add Red.png",
//                                 width: context.isPhone ? 0.84 * width : 400,
//                                 title: 'Add New Warehouse',
//                                 glow: false,
//                                 //width: 100,
//                               ),
//                               context.isPhone
//                                   ? Container()
//                                   : CustomButton(
//                                       rightIcon: "assets/icons/Arrow_right.png",
//                                       title: "Next",
//                                       onTap: submit,
//                                     )
//                             ],
//                           ),

//                           const Gap(20),
//                           if (context.isPhone)
//                             CustomButton(
//                               rightIcon: "assets/icons/Arrow_right.png",
//                               width: 0.84 * width,
//                               onTap: submit,
//                               //    glow: false,
//                               title: 'next'.tr,
//                             ),
//                           const Gap(20),
//                         ],
//                       ),
//                     )),
//                   ),
//                 );
//         }),
//       ),
//     );
//   }
// }

// class CustomContainer extends StatelessWidget {
//   final String labelText;
//   Widget? child;
//   CustomContainer({
//     super.key,
//     required this.labelText,
//     this.child,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.topLeft,
//       children: <Widget>[
//         Padding(
//           padding: EdgeInsets.only(
//             top: 14,
//           ),
//           child: Container(
//             width: 0.96 * MediaQuery.sizeOf(context).width,
//             decoration: ShapeDecoration(
//               shape: RoundedRectangleBorder(
//                 side: BorderSide(
//                     width: 5,
//                     color: context.isPhone
//                         ? AppColors.scaffoldBackgroundColor
//                         : AppColors.primaryColor),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//             ),
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
//               child: child,
//             ),
//           ),
//         ),
//         Container(
//                 // alignment: Alignment.center,
//                 color: AppColors.scaffoldBackgroundColor,
//                 child: Text(
//                   labelText,
//                   style: TextStyles.titleMedium(context),
//                 ).paddingSymmetric(horizontal: 10))
//             .paddingOnly(left: 20)
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Auth/widgets/commonTextField.dart';
import 'package:moolwmsstore/View/common/tagContainer.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(20),
            Column(
              children: [
                TagContainer(
                    title: 'Personal Information',
                    child: Column(
                      children: [
                        CommonTextField(
                          //   inputFormatters: [ FilteringTextInputFormatter.allow(RegExp('[0-9]')),],
                          labelText: 'Organisation Name',
                          hintText: 'Enter your organisation’s name',
                        ),
                        const Gap(16),
                        CommonTextField(
                        //  validator: ,
                          // inputFormatters: [
                          //   FilteringTextInputFormatter.allow(
                          //       RegExp(r"^[A-Z]{5}[0-9]{4}[A-Z]{1}$"))
                          // ],
                          labelText: "PAN Number",
                          hintText: "Enter PAN number",
                        ),
                        const Gap(16),
                      ],
                    ).paddingSymmetric(vertical: 16, horizontal: 16)),
                const Gap(16),
                TagContainer(
                    title: 'Personal Information',
                    child: Column(
                      children: [
                        CommonTextField(
                          labelText: "Full Name",
                          hintText: "Enter full name",
                        ),
                        const Gap(16),
                        CommonTextField( inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r"^[A-Z]{5}[0-9]{4}[A-Z]{1}$"))
                          ],
                          labelText: "Mobile Number",
                          hintText: "Enter mobile number",
                        ),
                        const Gap(16),
                        CommonTextField( inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r"^[A-Z]{5}[0-9]{4}[A-Z]{1}$"))
                          ],
                          labelText: "Email ID",
                          hintText: "Enter email address",
                        ),
                        const Gap(16),
                      ],
                    ).paddingSymmetric(vertical: 16, horizontal: 16))
              ],
            )
          ],
        ).paddingSymmetric(vertical: 8, horizontal: 20),
      ),
      appBar: AppBar(
        title: const Text(
          "Sign Up",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
