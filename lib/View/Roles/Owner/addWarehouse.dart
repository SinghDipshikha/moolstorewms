import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Data/Model/Auth/addWarehouseField.dart';
import 'package:moolwmsstore/View/Auth/Controllers/authController.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/myTextField.dart';
import 'package:moolwmsstore/utils/textutils.dart';

//@RoutePage()
class AddWarehouse extends StatelessWidget {
  const AddWarehouse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Add Warehouse',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: GetBuilder<AuthController>(initState: (state) {
        Get.find<AuthController>().getAddWarehouseFields();
      }, builder: (authController) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  //  .copyWith(bottom: 0),
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: authController.addWarehouseFields.length,
                      itemBuilder: (context, i) {
                        AddWarehiuseField field =
                            authController.addWarehouseFields[i];

                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          //   .copyWith(bottom: 0)
                          // .copyWith(
                          //     bottom: (i + 1) ==
                          //             authController
                          //                 .addWarehouseFields.length
                          //         ? 20
                          //         : null),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: field.field_name.tr,
                                      style: TextStyles.bodyMedium(context)
                                          .copyWith(
                                              color: AppColors.primaryColor),
                                    ),
                                    if (field.required == 1)
                                      TextSpan(
                                        text: '*',
                                        style: TextStyles.bodyMedium(context)
                                            .copyWith(color: Colors.red),
                                      ),
                                  ],
                                ),
                              ),
                              MyTextField(
                                onChanged: (x) {},
                                textCapitalization:
                                    TextUtils.textCapitalization(field.type),
                                keyboardType:
                                    TextUtils.keyboardType(field.type),
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    if (field.error_message_on_empt != null &&
                                        field.required == 1) {
                                      return field.error_message_on_empt;
                                    } else {
                                      return null;
                                    }
                                  } else if (field.invalid_message != null) {
                                    if (!TextUtils.validateTYPE(
                                        type: field.type, val: val)) {
                                      return (field.invalid_message?.tr);
                                    } else {
                                      return null;
                                    }
                                  }
                                  return null;
                                },
                                borderRadius: 4.82,
                                labelText: field.error_message_on_empt?.tr,
                              )
                            ],
                          ),
                        );
                      }),
                ),
                const Gap(10),
                // CustomButton(
                //   onTap: () {},
                //   leftIcon: "assets/icons/Add Red.png",
                //   // width: isMobile(context) ? 100.w : 400,
                //   title: 'Add New Warehouse',
                //   glow: false,
                //   //width: 100,
                // ),
                const Gap(10),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     CustomBackbutton(),
                //     CustomButton(
                //       width: 160,
                //       title: "Submit",
                //       glow: true,
                //       rightIcon: "assets/icons/submit.png",
                //     )
                //   ],
                // ),
                const Gap(20),
              ],
            ),
          ),
        );
      }),
    );
  }
}
