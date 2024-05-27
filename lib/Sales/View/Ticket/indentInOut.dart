import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Sales/Model/Indent/checkInSubmit.dart';
import 'package:moolwmsstore/Sales/Model/Indent/indentElement.dart';
import 'package:moolwmsstore/Sales/View/common/widgets/salesCommonWidgets.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/tagContainer.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';

class IndentInOut extends StatelessWidget {
  IndentInOut({super.key, required this.indentElement});
  IndentElement indentElement;
  VehicleDetails? veh = const VehicleDetails();

  DateFormat dateformatter = DateFormat('MMM d, yyyy');
  DateFormat timeformatter = DateFormat('h:mm a');
  final formKey = GlobalKey<FormState>();
  void onSubmit() {
    bool quantityZero = true;
    if (formKey.currentState?.validate() ?? false) {
      var salesController = Get.find<SalesController>();
      for (var e in salesController.initialProductsqty) {
        if (e["qty"] != 0) {
          quantityZero = false;
        }
      }
      if (quantityZero) {
        Snacks.redSnack("Products cannot be empty");
        return;
      }
      if (salesController.checkIndateTime == null) {
        Snacks.redSnack("Please select Date and Time For arrival at Warehouse");
        return;
      }

      salesController.checkInModel = salesController.checkInModel!.copyWith(
          vehicle_details: veh,
          // products: salesController.initialProductsqty,
          checkin_type: "IN",
          expected_date: salesController.checkIndateTime);
      salesController.createIndentChecIn();
    }
  }

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            'Indent In/Out',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Gap(12),
                Container(
                  alignment: Alignment.center,
                  height: 39,
                  //  width: double.infinity,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFFAF9FF),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0x195A57FF)),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                    ),
                  ),
                  child: Text(
                    'Indent ID : ${indentElement.ticket_id}',
                    style: const TextStyle(
                      color: Color(0xFF595959),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                  ).paddingAll(8),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 39,
                  //  width: double.infinity,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFFAF9FF),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0x195A57FF)),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                    ),
                  ),
                  child: Text(
                    'PO ID : ${indentElement.order_number}',
                    style: const TextStyle(
                      color: Color(0xFF595959),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                  ).paddingAll(8),
                ),
                const Gap(12),
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/Mask group.png",
                        )),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0x195A57FF)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Warehouse Name',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFC2C0FF),
                          fontSize: 12,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      GetBuilder<SalesController>(initState: (state) {
                        Get.find<SalesController>().getInitialProductsofIndent(
                            indentId: indentElement.ticket_id ?? "");
                      }, builder: (salesController) {
                        if (salesController.loading) {
                          return const Center(
                            child: SpinKitDoubleBounce(
                              color: Color(0xFF5A57FF),
                            ),
                          );
                        }
                        return Text(
                          salesController.initialProducts[0].warehouse_name ??
                              "--",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                          ),
                        );
                      })
                    ],
                  ),
                ),
                GetBuilder<SalesController>(builder: (salesController) {
                  return salesController.checkIndateTime == null
                      ? ElevatedButton(
                          onPressed: () async {
                            await showOmniDateTimePicker(
                              theme: ThemeData(
                                  primaryColor: const Color(0xFF5A57FF),
                                  textTheme: const TextTheme(
                                    displayLarge:
                                        TextStyle(color: Colors.black),
                                    displayMedium:
                                        TextStyle(color: Colors.black),
                                    displaySmall:
                                        TextStyle(color: Colors.black),
                                    headlineLarge:
                                        TextStyle(color: Colors.black),
                                    headlineMedium:
                                        TextStyle(color: Colors.black),
                                    headlineSmall:
                                        TextStyle(color: Colors.black),
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
                              initialDate: salesController.checkIndateTime ??
                                  DateTime.now(),
                              firstDate: DateTime(1600)
                                  .subtract(const Duration(days: 3652)),
                              lastDate: DateTime.now().add(
                                const Duration(days: 3652),
                              ),
                              is24HourMode: false,
                              isShowSeconds: false,
                              minutesInterval: 1,
                              secondsInterval: 1,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16)),
                              constraints: const BoxConstraints(
                                maxWidth: 350,
                                maxHeight: 650,
                              ),
                              transitionBuilder:
                                  (context, anim1, anim2, child) {
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
                              transitionDuration:
                                  const Duration(milliseconds: 200),
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
                              if (v != null) {
                                salesController.checkIndateTime = v;
                                salesController.update();
                              }
                            });

                            salesController.update();
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Color(0xFFFAF9FF)),
                          ),
                          child: const Text("Pick Date and Time"),
                        ).paddingAll(12)
                      : Container(
                          width: double.infinity,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFFAF9FF),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0x195A57FF)),
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
                                    timeformatter.format(salesController
                                        .checkIndateTime as DateTime),
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
                                    dateformatter.format(salesController
                                        .checkIndateTime as DateTime),
                                    style: const TextStyle(
                                      color: Color(0xFFACACAC),
                                      fontSize: 16,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Color(0xFFACACAC),
                                    ),
                                    onPressed: () async {
                                      await showOmniDateTimePicker(
                                        theme: ThemeData(
                                            primaryColor:
                                                const Color(0xFF5A57FF),
                                            textTheme: const TextTheme(
                                              displayLarge: TextStyle(
                                                  color: Colors.black),
                                              displayMedium: TextStyle(
                                                  color: Colors.black),
                                              displaySmall: TextStyle(
                                                  color: Colors.black),
                                              headlineLarge: TextStyle(
                                                  color: Colors.black),
                                              headlineMedium: TextStyle(
                                                  color: Colors.black),
                                              headlineSmall: TextStyle(
                                                  color: Colors.black),
                                              titleLarge: TextStyle(
                                                  color: Colors.black),
                                              titleMedium: TextStyle(
                                                  color: Colors.black),
                                              titleSmall: TextStyle(
                                                  color: Colors.black),
                                              bodyLarge: TextStyle(
                                                  color: Colors.black),
                                              bodyMedium: TextStyle(
                                                  color: Colors.black),
                                              bodySmall: TextStyle(
                                                  color: Colors.black),
                                              labelLarge: TextStyle(
                                                  color: Colors.black),
                                              labelMedium: TextStyle(
                                                  color: Colors.black),
                                              labelSmall: TextStyle(
                                                  color: Colors.black),
                                            )),
                                        context: context,
                                        initialDate:
                                            salesController.checkIndateTime ??
                                                DateTime.now(),
                                        firstDate: DateTime(1600).subtract(
                                            const Duration(days: 3652)),
                                        lastDate: DateTime.now().add(
                                          const Duration(days: 3652),
                                        ),
                                        is24HourMode: false,
                                        isShowSeconds: false,
                                        minutesInterval: 1,
                                        secondsInterval: 1,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(16)),
                                        constraints: const BoxConstraints(
                                          maxWidth: 350,
                                          maxHeight: 650,
                                        ),
                                        transitionBuilder:
                                            (context, anim1, anim2, child) {
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
                                        transitionDuration:
                                            const Duration(milliseconds: 200),
                                        barrierDismissible: true,
                                        selectableDayPredicate: (dateTime) {
                                          // Disable 25th Feb 2023
                                          if (dateTime ==
                                              DateTime(2023, 2, 25)) {
                                            return false;
                                          } else {
                                            return true;
                                          }
                                        },
                                      ).then((v) {
                                        if (v != null) {
                                          salesController.update();
                                        }
                                      });
                                    },
                                  )
                                ],
                              ),
                            ],
                          ),
                        ).paddingSymmetric(vertical: 12);
                }),
                TagContainer(
                    title: "Products",
                    child:
                        GetBuilder<SalesController>(builder: (salesController) {
                      if (salesController.loading) {
                        return const Center(
                          child: SpinKitDoubleBounce(
                            color: Color(0xFF5A57FF),
                          ),
                        );
                      }

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                            salesController.initialProducts.length, (i) {
                          Logger().i(salesController.initialProducts[i]);

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                salesController
                                        .initialProducts[i].product_name ??
                                    "--",
                                style: const TextStyle(
                                  color: Color(0xFF5A57FF),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Quantity Raised : ${salesController.initialProducts[i].ordered_qty}',
                                style: const TextStyle(
                                  color: Color.fromRGBO(53, 53, 53, 1),
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Quantity In Warehouse : ${(salesController.initialProducts[i].ordered_qty ?? 0) - (salesController.initialProducts[i].qty_balance as int)}',
                                style: const TextStyle(
                                  color: Color(0xFF353535),
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Quantity',
                                    style: TextStyle(
                                      color: Color(0xFF353535),
                                      fontSize: 14,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Gap(26),
                                  GestureDetector(
                                    onTap: () {
                                      if (!(salesController
                                              .initialProductsqty[i]["qty"] ==
                                          0)) {
                                        salesController.initialProductsqty[i]
                                            ["qty"] = (salesController
                                                    .initialProductsqty[i]
                                                ["qty"] as int) -
                                            1;
                                                HapticFeedback.lightImpact();
                                      salesController.update();
                                      }
                                  
                                    },
                                    child: Image.asset(
                                      "assets/icons/subtractBlue.png",
                                      height: 26,
                                      color:
                                          salesController.initialProductsqty[i]
                                                      ["qty"] ==
                                                  0
                                              ? Colors.grey
                                              : null,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 0.50,
                                            color: Color(0x195A57FF)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: Text(
                                      '${salesController.initialProductsqty[i]["qty"]}',
                                      style: const TextStyle(
                                        color: Color(0xFF353535),
                                        fontSize: 16,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ).paddingSymmetric(
                                        vertical: 4, horizontal: 10),
                                  ).paddingSymmetric(horizontal: 4)
                                  //assets/icons/add-circle.png
                                  ,
                                  InkWell(
                                    onTap: () {
                                      if (!(salesController
                                              .initialProductsqty[i]["qty"] ==
                                          (salesController.initialProducts[i]
                                                  .qty_balance ??
                                              0))) {
                                        salesController.initialProductsqty[i]
                                            ["qty"] = (salesController
                                                        .initialProductsqty[i]
                                                    ["qty"] ??
                                                0) +
                                            1;
                                        HapticFeedback.lightImpact();
                                      }
                                      salesController.update();
                                      //  salesController.checkInModel = salesController.checkInModel.
                                    },
                                    child: Image.asset(
                                      "assets/icons/add-circle.png",
                                      height: 26,
                                      color:
                                          salesController.initialProductsqty[i]
                                                      ["qty"] ==
                                                  (salesController
                                                          .initialProducts[i]
                                                          .qty_balance ??
                                                      0)
                                              ? Colors.grey
                                              : null,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ).paddingAll(8);
                        }),
                      ).paddingSymmetric(vertical: 22, horizontal: 12);
                    })),
                const Gap(12),
                TagContainer(
                    title: "Vehicle Details",
                    child: Column(
                      children: [
                        CommonTextField(
                          textCapitalization: TextCapitalization.words,
                          onChanged: (p0) {
                            veh = veh!.copyWith(vehicle_type: p0);
                          },
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              {
                                return 'required';
                              }
                            } else {
                              return null;
                            }
                          },
                          hintText: 'Enter vehicle type',
                          containerColor: Colors.white,
                          labelText: 'Vehicle Type',
                        ).paddingSymmetric(vertical: 4),
                        CommonTextField(
                          textCapitalization: TextCapitalization.characters,
                          onChanged: (p0) {
                            veh = veh!.copyWith(vehicle_number: p0);
                          },
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              {
                                return 'required';
                              }
                            } else {
                              return null;
                            }
                          },
                          hintText: 'Enter vehicle number',
                          containerColor: Colors.white,
                          labelText: 'Vehicle Number',
                        ).paddingSymmetric(vertical: 4),
                        CommonTextField(
                          textCapitalization: TextCapitalization.words,
                          onChanged: (p0) {
                            veh = veh!.copyWith(driver_name: p0);
                          },
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              {
                                return 'required';
                              }
                            } else {
                              return null;
                            }
                          },
                          hintText: 'Enter Driver’s name',
                          containerColor: Colors.white,
                          labelText: 'Driver Name',
                        ).paddingSymmetric(vertical: 4),
                        CommonTextField(
                          keyboardType: TextInputType.number,
                          onChanged: (p0) {
                            veh = veh!.copyWith(driver_ph_number: p0);
                          },
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              {
                                return 'required';
                              }
                            } else {
                              return null;
                            }
                          },
                          hintText: 'Enter Driver’s mobile umber',
                          containerColor: Colors.white,
                          labelText: 'Driver ‘s Mobile No.',
                        ).paddingSymmetric(vertical: 4),
                      ],
                    ).paddingAll(12)),
                InkWell(
                  onTap: onSubmit,
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF02A676),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ).paddingSymmetric(vertical: 22),
                )
              ],
            ).paddingSymmetric(
                vertical: Dimensions.vericalBodyPad,
                horizontal: Dimensions.horizontalBodyPad),
          ),
        ));
  }
}
