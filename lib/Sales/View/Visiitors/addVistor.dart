import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:moolwmsstore/Sales/View/common/widgets/salesCommonWidgets.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';
import 'package:pinch_zoom/pinch_zoom.dart';

class AddVistor extends StatelessWidget {
  AddVistor({super.key});

  final ImagePicker picker = ImagePicker();
  final _formKey = GlobalKey<FormState>();
  DateFormat dateformatter = DateFormat('MMM d, yyyy');
  DateFormat timeformatter = DateFormat('h:mm a');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
          GetBuilder<SalesController>(builder: (salesController) {
        if (salesController.loading) {
          return const Center(
            child: SpinKitDoubleBounce(
              color: Color(0xFF5A57FF),
            ),
          );
        }
        return CustomButton(
          onTap: () {
            if (_formKey.currentState!.validate()) {
              if (salesController.addVisitorModel.id_proof == null) {
                Snacks.redSnack("Please Upload Id proof");
                return;
              } else {
                salesController.addVistor();
              }
            }
          },
          title: "Create",
          colors: const [
            Color(0xFF04BF8A),
            Color(0xFF04BF8A),
          ],
        ).paddingSymmetric(horizontal: Dimensions.horizontalBodyPad);
      }),
      appBar: AppBar(
        title: const Text(
          'Add Visitor',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CommonTextField(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    {
                      return 'required';
                    }
                  } else {
                    return null;
                  }
                },
                onChanged: (p0) {
                  Get.find<SalesController>().addVisitorModel =
                      Get.find<SalesController>()
                          .addVisitorModel
                          .copyWith(visitor_name: p0);
                },
                labelText: 'Full Name',
                hintText: 'Enter visitor’s full name',
                textCapitalization: TextCapitalization.words,
              ).paddingSymmetric(vertical: 12),
              CommonTextField(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    {
                      return 'required';
                    }
                  } else {
                    return null;
                  }
                },
                onChanged: (p0) {
                  Get.find<SalesController>().addVisitorModel =
                      Get.find<SalesController>()
                          .addVisitorModel
                          .copyWith(visitor_ph_number: "+91$p0");
                },
                labelText: 'Mobile Number',
                hintText: 'Enter visitor’s Mobile Number',
                keyboardType: TextInputType.number,
                maxLength: 10,
                prefixIcon: const Text("+91").paddingOnly(top: 15, left: 8),
              ).paddingOnly(top: 12),
              CommonTextField(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    {
                      return 'required';
                    }
                  } else {
                    return null;
                  }
                },
                onChanged: (p0) {
                  Get.find<SalesController>().addVisitorModel =
                      Get.find<SalesController>()
                          .addVisitorModel
                          .copyWith(purpose_of_visit: p0);
                },
                labelText: 'Purpose of Visit',
                textCapitalization: TextCapitalization.words,
              ).paddingSymmetric(vertical: 12),
              const Row(
                children: [
                  Text(
                    'ID Proof',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                      color: Color(0xFFACACAC),
                    ),
                  ),
                ],
              ),
              GetBuilder<SalesController>(builder: (salesController) {
                if (salesController.imageUploading) {
                  return const Center(
                    child: SpinKitDoubleBounce(
                      color: Color(0xFF5A57FF),
                    ),
                  );
                }

                if (salesController.addVisitorModel.id_proof != null) {
                  return Stack(
                    alignment: Alignment.topRight,
                    children: [
                      PinchZoom(
                        child: Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: 125,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFAF9FF),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            child: Image.network(
                                salesController.addVisitorModel.id_proof ??
                                    "")),
                      ),
                      InkWell(
                        onTap: () {
                          salesController.addVisitorModel = salesController
                              .addVisitorModel
                              .copyWith(id_proof: null);
                          salesController.update();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 44,
                          width: 64,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFFFD2D5),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                          ),
                          child: Image.asset(
                            "assets/icons/Trash (R) FIlled.png",
                            height: 24,
                          ),
                        ).paddingAll(4),
                      )
                    ],
                  );
                }
                return InkWell(
                  onTap: () {
                    picker
                        .pickImage(
                            source: ImageSource.gallery, imageQuality: 50)
                        .then((v) {
                      if (v != null) {
                        salesController.uploadImage(v).then((s) {
                          if (s != null) {
                            salesController.addVisitorModel = salesController
                                .addVisitorModel
                                .copyWith(id_proof: s);
                            salesController.update();
                          }
                        });
                      }
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 125,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF5A57FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: const Text(
                      'Upload ID Image',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                );
              }),
              const Row(
                children: [
                  Text(
                    'Valid Till',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                      color: Color(0xFFACACAC),
                    ),
                  ),
                ],
              ).paddingSymmetric(vertical: 8),
              GetBuilder<SalesController>(builder: (salesController) {
                return InkWell(
                  onTap: () {
                    showOmniDateTimePicker(
                      theme: ThemeData(
                          primaryColor: const Color(0xFF5A57FF),
                          textTheme: const TextTheme(
                            displayLarge: TextStyle(color: Colors.black),
                            displayMedium: TextStyle(color: Colors.black),
                            displaySmall: TextStyle(color: Colors.black),
                            headlineLarge: TextStyle(color: Colors.black),
                            headlineMedium: TextStyle(color: Colors.black),
                            headlineSmall: TextStyle(color: Colors.black),
                            titleLarge: TextStyle(color: Colors.black),
                            titleMedium: TextStyle(color: Colors.black),
                            titleSmall: TextStyle(color: Colors.black),
                            bodyLarge: TextStyle(color: Colors.black),
                            bodyMedium: TextStyle(color: Colors.black),
                            bodySmall: TextStyle(color: Colors.black),
                            labelLarge: TextStyle(color: Colors.black),
                            labelMedium: TextStyle(color: Colors.black),
                            labelSmall: TextStyle(color: Colors.black),
                          )),
                      context: context,
                      initialDate: salesController.addVisitorModel.validTill ??
                          DateTime.now(),
                      firstDate:
                          DateTime(1600).subtract(const Duration(days: 3652)),
                      lastDate: DateTime.now().add(
                        const Duration(days: 3652),
                      ),
                      is24HourMode: false,
                      isShowSeconds: false,
                      minutesInterval: 1,
                      secondsInterval: 1,
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      constraints: const BoxConstraints(
                        maxWidth: 350,
                        maxHeight: 650,
                      ),
                      transitionBuilder: (context, anim1, anim2, child) {
                        return FadeTransition(
                          opacity: anim1.drive(
                            Tween(
                              begin: 0,
                              end: 1,
                            ),
                          ),
                          child: child,
                        );
                      },
                      transitionDuration: const Duration(milliseconds: 200),
                      barrierDismissible: true,
                      selectableDayPredicate: (dateTime) {
                        // Disable 25th Feb 2023
                        if (dateTime == DateTime(2023, 2, 25)) {
                          return false;
                        } else {
                          return true;
                        }
                      },
                    ).then((v) {
                      salesController.addVisitorModel = salesController
                          .addVisitorModel
                          .copyWith(validTill: v);
                      salesController.update();
                    });
                  },
                  child: Container(
                    height: 50,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFFAF9FF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x195E57FC)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/icons/Clock Icon (R).png",
                              height: 22,
                            ).paddingSymmetric(horizontal: 8),
                            Text(
                              salesController.addVisitorModel.validTill == null
                                  ? "--"
                                  : timeformatter.format(salesController
                                      .addVisitorModel.validTill as DateTime),
                              style: const TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 16,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/icons/calendar.png",
                              height: 22,
                            ).paddingSymmetric(horizontal: 8),
                            Text(
                              salesController.addVisitorModel.validTill == null
                                  ? "--"
                                  : dateformatter.format(salesController
                                      .addVisitorModel.validTill as DateTime),
                              style: const TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 16,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }).paddingOnly(bottom: 12),
              GetBuilder<SalesController>(builder: (salesController) {
                return DropdownButtonFormField2<Map>(
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 27, 23, 251),
                            width: 0.4),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 169, 153, 246),
                            width: 0.2),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    // Add Horizontal padding using menuItemStyleData.padding so it matches
                    // the menu padding when button's width is not specified.
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // Add more decoration..
                  ),
                  hint: const Text(
                    'Select Warehouse',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 12,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  items: salesController.user.warehouse?.map((item) {
                    return DropdownMenuItem<Map>(
                      value: item,
                      child: Row(
                        children: [
                          Text(
                            "${item["warehouse_name"]}",
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Gap(10),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: item["color"],
                                borderRadius: BorderRadius.circular(4)),
                            height: 20,
                            width: 20,
                            child: Text("${item["centerTitle"]}",
                                style: const TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    );
                  }).toList(),
                  validator: (value) {
                    if (value == null) {
                      return 'Required';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    if (value != null) {
                      salesController.addVisitorModel = salesController
                          .addVisitorModel
                          .copyWith(warehouse_id: value["id"]);
                      salesController.update();
                    }
                  },
                  onSaved: (value) {
                    // ownerController.selectedTempType = value;
                    // ownerController.update();
                  },
                  buttonStyleData: const ButtonStyleData(
                    //decoration: BoxDecoration(color: Colors.white),
                    overlayColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  iconStyleData: IconStyleData(
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ).paddingOnly(right: 10),
                    iconSize: 24,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.only(left: 6),
                  ),
                ).paddingSymmetric(vertical: 12);
              }),
              const Gap(40),
            ],
          ).paddingSymmetric(
              vertical: Dimensions.vericalBodyPad,
              horizontal: Dimensions.horizontalBodyPad),
        ),
      ),
    );
  }
}
