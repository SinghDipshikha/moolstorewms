import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
import 'package:moolwmsstore/Owner/Model/addWarehouseField.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/myTextField.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:moolwmsstore/utils/textutils.dart';

////@RoutePage()
class AddWarehouse extends StatelessWidget {
  const AddWarehouse({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.black,
          title: const Text(
            'Warehouse Details',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
              //height: 0,
            ),
          )),
      body: GetBuilder<OwnerController>(initState: (state) {
        Get.find<OwnerController>().getAddWarehouseFields();
      }, builder: (ownerController) {
        final formKey = GlobalKey<FormState>();
        return Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  //  .copyWith(bottom: 0),
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: ownerController.addWarehouseFields.length,
                      itemBuilder: (context, i) {
                        AddWarehiuseField field =
                            ownerController.addWarehouseFields[i];

                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: field.field_name.tr,
                                      style: const TextStyle(
                                        color: Color(0xFF595959),
                                        fontSize: 16,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                        //height: 0,
                                      ),
                                    ),
                                    // if (field.required == 1)
                                    //   TextSpan(
                                    //     text: '*',
                                    //     style: TextStyles.bodyMedium(context)
                                    //         .copyWith(color: Colors.red),
                                    //   ),
                                  ],
                                ),
                              ),
                              const Gap(6),
                              MyTextField(
                                maxLength: field.type == "mobile" ? 10 : null,
                                prefixIcon: field.type == "mobile"
                                    ? Image.asset(
                                        "assets/icons/india.png",
                                        height: 6,
                                      ).paddingAll(12)
                                    : null,
                                suffixIcon: field.field_name == "total_capacity"
                                    ? const Text(
                                        "SQFT",
                                        style: TextStyle(color: Colors.grey),
                                      ).paddingOnly(top: 15)
                                    : null,
                                onChanged: (x) {
                                  if (x.isNotEmpty)
                                    ownerController.addWarehouseFields[i] =
                                        field.copyWith(
                                            value: (field.type == "int" ||
                                                    field.type == "double" ||
                                                    field.type == "mobile")
                                                ? int.parse(x.toString())
                                                : x);
                                },
                                textCapitalization:
                                    TextUtils.textCapitalization(field.type),
                                keyboardType:
                                    TextUtils.keyboardType(field.type),
                                inputFormatters:
                                    TextUtils.inputFormatters(field.type),
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    if (field.error_message_on_empt != null &&
                                        field.required == 1) {
                                      return field.error_message_on_empt!.tr;
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
                ownerController.addingWarehouse
                    ? Center(
                        child: LoadingAnimationWidget.staggeredDotsWave(
                          color: AppColors.primaryColor,
                          size: 80,
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          if (formKey.currentState?.validate() ?? false) {
                            ownerController.submitWarehouse();
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: 45,
                          decoration: ShapeDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFF2D2D2D), Color(0xFF1F1F1F)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          child: const Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                const Gap(10),

                // ),
                const Gap(20),
              ],
            ),
          ),
        );
      }).paddingSymmetric(
          vertical: Dimensions.vericalBodyPad,
          horizontal: Dimensions.horizontalBodyPad),
    );
  }
}
