import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Sales/Model/Customer/customerListElement.dart';
import 'package:moolwmsstore/Sales/Model/Indent/indentInSubmit.dart';
import 'package:moolwmsstore/Sales/Model/enterProduct.dart';
import 'package:moolwmsstore/Sales/View/Ticket/enterProduct.dart';
import 'package:moolwmsstore/Sales/View/common/widgets/salesCommonWidgets.dart';
import 'package:moolwmsstore/Sales/View/customer/addCustomerDialog.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/tagContainer.dart';
import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:moolwmsstore/utils/globals.dart';
import 'package:number_text_input_formatter/number_text_input_formatter.dart';
// import 'package:throttling/throttling.dart';
import 'package:throttling/throttling.dart';

class CreateIndent extends StatefulWidget {
  const CreateIndent({super.key});

  @override
  State<CreateIndent> createState() => _CreateIndentState();
}

class _CreateIndentState extends State<CreateIndent> {
  VehicleDetails vehicle = const VehicleDetails();

  final _formKey = GlobalKey<FormState>();
  int selectedWarehouseId = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Create Indent', style: TextStyles.appBarTextStyle),
      ),
      body: GetBuilder<SalesController>(builder: (salesController) {
        return SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const AskCustomerindent(),
                CommonTextField(
                  onChanged: (p0) {
                    salesController.submitIndent =
                        salesController.submitIndent.copyWith(order_number: p0);
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
                  //  controller: ,
                  labelText: 'Purchase Order/Invoice ID',
                ).paddingSymmetric(vertical: 12),
                Column(
                  children: List.generate(salesController.ticketProducts.length,
                      (index) {
                    return EnterProductView(
                      index: index,
                    ).paddingSymmetric(vertical: 12);
                  }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        salesController.ticketProducts
                            .add(const EnterProduct());
                        salesController.update();
                      },
                      child: Image.asset(
                        "assets/icons/fabBlue.png",
                        height: 52,
                      ),
                    ),
                  ],
                ),
                TagContainer(
                  title: "Vehicle Details",
                  child: Column(
                    children: [
                      CommonTextField(
                        onChanged: (p0) {
                          vehicle = vehicle.copyWith(vehicle_type: p0);
                        },
                        containerColor: Colors.white,

                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            {
                              return 'required';
                            }
                          } else {
                            return null;
                          }
                        },
                        //  controller: ,
                        labelText: 'Vehicle Type',
                      ).paddingSymmetric(vertical: 12),
                      CommonTextField(
                        onChanged: (p0) {
                          vehicle = vehicle.copyWith(vehicle_number: p0);
                        },
                        containerColor: Colors.white,

                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            {
                              return 'required';
                            }
                          } else {
                            return null;
                          }
                        },
                        //  controller: ,
                        labelText: 'Vehicle Number',
                      ).paddingSymmetric(vertical: 12),
                      CommonTextField(
                        onChanged: (p0) {
                          vehicle = vehicle.copyWith(driver_name: p0);
                        },
                        containerColor: Colors.white,

                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            {
                              return 'required';
                            }
                          } else {
                            return null;
                          }
                        },
                        //  controller: ,
                        labelText: 'Driver Name',
                      ).paddingSymmetric(vertical: 12),
                      CommonTextField(
                        prefixIcon: Image.asset(
                          "assets/icons/india.png",
                          height: 6,
                        ).paddingAll(12),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                        ],
                        maxLength: 10,
                        onChanged: (p0) {
                          vehicle = vehicle.copyWith(driver_ph_number: p0);
                        },
                        containerColor: Colors.white,

                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            {
                              return 'required';
                            }
                          } else {
                            return null;
                          }
                        },
                        //  controller: ,
                        labelText: 'Driver Phone Number',
                      ).paddingSymmetric(vertical: 12),
                    ],
                  ).paddingAll(12),
                ).paddingSymmetric(vertical: 12),
                TagContainer(
                  title: "Warehouse Details",
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DropdownButtonFormField2<WarehousesAcess>(
                        decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                              gapPadding: 0,
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 27, 23, 251),
                                  width: 0.4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          enabledBorder: const OutlineInputBorder(
                              gapPadding: 0,
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 169, 153, 246),
                                  width: 0.2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          contentPadding: EdgeInsets.zero,
                          border: OutlineInputBorder(
                            gapPadding: 0,
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        hint: const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Select Warehouse',
                                style: TextStyle(
                                  color: Color(0xFF595959),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        items: salesController.user.warehouse?.map((item) {
                          return DropdownMenuItem<WarehousesAcess>(
                            value: item,
                            child: Row(
                              children: [
                                Text(
                                  "${item.warehouse_name}",
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
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
                            selectedWarehouseId = value.warehouse_id!;
                          }
                        },
                        onSaved: (value) {
                          // ownerController.selectedTempType = value;
                          // ownerController.update();
                        },
                        buttonStyleData: const ButtonStyleData(
                          padding: EdgeInsets.zero,
                          //  decoration: BoxDecoration(color: Colors.red)
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
                      ).paddingSymmetric(vertical: 12),
                      const Gap(10),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Temperature Requirements',
                              style: TextStyle(
                                color: Color(0xFF595959),
                                fontSize: 16,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(8),
                      Row(
                        children: [
                          const Text(
                            'Min.',
                            style: TextStyle(
                              color: Color(0xFFCCCCCC),
                              fontSize: 14,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            width: 92,
                            height: 53,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0x335A57FF)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: TextField(
                              onTapOutside: (event) {
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
                              onChanged: (value) {
                                if (value.contains("-")) {
                                  if (value.length > 1) {
                                    salesController.submitIndent =
                                        salesController.submitIndent.copyWith(
                                            min_temperature: int.parse(value));
                                  }
                                } else {
                                  salesController.submitIndent =
                                      salesController.submitIndent.copyWith(
                                          min_temperature: int.parse(value));
                                }
                              },
                              inputFormatters: [
                                NumberTextInputFormatter(allowNegative: true)
                              ],
                              decoration: const InputDecoration(
                                  border: InputBorder.none),
                            ),
                          ).paddingSymmetric(horizontal: 4),
                          const Text(
                            '°c',
                            style: TextStyle(
                              color: Color(0xFFCCCCCC),
                              fontSize: 14,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Gap(20),
                          const Text(
                            'Max.',
                            style: TextStyle(
                              color: Color(0xFFCCCCCC),
                              fontSize: 14,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            width: 92,
                            height: 53,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0x335A57FF)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: TextField(
                              onTapOutside: (event) {
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
                              onChanged: (value) {
                                if (value.contains("-")) {
                                  if (value.length > 1) {
                                    salesController.submitIndent =
                                        salesController.submitIndent.copyWith(
                                            max_temperature: int.parse(value));
                                  }
                                } else {
                                  salesController.submitIndent =
                                      salesController.submitIndent.copyWith(
                                          max_temperature: int.parse(value));
                                }
                              },
                              inputFormatters: [
                                NumberTextInputFormatter(allowNegative: true)
                              ],
                              decoration: const InputDecoration(
                                  border: InputBorder.none),
                            ),
                          ).paddingSymmetric(horizontal: 4),
                          const Text(
                            '°c',
                            style: TextStyle(
                              color: Color(0xFFCCCCCC),
                              fontSize: 14,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const Gap(
                        12,
                      ),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Vehicle Arrival Date and Time",
                              style: TextStyle(
                                color: Color(0xFF595959),
                                fontSize: 16,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(
                        8,
                      ),
                      InkWell(
                        onTap: () async {
                          AppConstants.pickDateTime(context: context).then(
                            (value) {
                              if (value != null) {
                                salesController.submitIndent = salesController
                                    .submitIndent
                                    .copyWith(expected_date: value);
                                salesController.update();

                                // arrivaldate = value;
                              }
                            },
                          );
                        },
                        child: Container(
                            alignment: Alignment.center,
                            height: 50.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 169, 153, 246),
                                    width: 0.2),
                                color: Colors.white,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(salesController
                                            .submitIndent.expected_date !=
                                        null
                                    ? AppConstants.timeformatter.format(
                                        salesController.submitIndent
                                            .expected_date as DateTime)
                                    : "Select"),
                                Image.asset(
                                  "assets/icons/calendar.png",
                                  height: 22,
                                ).paddingAll(6),
                              ],
                            )),
                      )
                    ],
                  ).paddingAll(12),
                ).paddingSymmetric(vertical: 12),
                salesController.creatingIndent
                    ? Center(
                        child: LoadingAnimationWidget.staggeredDotsWave(
                          color: AppColors.primaryColor,
                          size: 60,
                        ),
                      )
                    : CustomButton(
                        title: "Submit",
                        onTap: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            salesController.submitIndent =
                                salesController.submitIndent.copyWith(
                                    customer_id: salesController
                                        .selectedCustomerForIndent!.id,
                                    warehouse_id: selectedWarehouseId,
                                    vehicle_details: vehicle.copyWith(
                                        expected_date: salesController
                                            .submitIndent.expected_date),
                                    products: salesController.ticketProducts);

                            salesController.createIndent(
                                i: salesController.submitIndent);
                          } else {
                            Snacks.redSnack("Please fill required fields");
                          }
                        },
                      ).paddingSymmetric(vertical: 12)
              ],
            ).paddingSymmetric(
                horizontal: Dimensions.horizontalBodyPad,
                vertical: Dimensions.vericalBodyPad),
          ),
        );
      }),
    );
  }
}

class AskCustomerindent extends StatefulWidget {
  const AskCustomerindent({super.key});

  @override
  State<AskCustomerindent> createState() => _AskCustomerindentState();
}

class _AskCustomerindentState extends State<AskCustomerindent> {
  List<CustomerListElement>? customerList;
  bool searching = false;
  final deb = Debouncing<void>(duration: const Duration(milliseconds: 200));

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SalesController>(builder: (salesController) {
      return salesController.selectedCustomerForIndent != null
          ? Container(
              decoration: ShapeDecoration(
                color: const Color(0xFFFAF9FF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: const Color.fromARGB(255, 238, 237, 237),
                    backgroundImage: salesController
                                .selectedCustomerForIndent?.avatar !=
                            null
                        ? null
                        : const AssetImage("assets/icons/customerAvatar.png"),
                    child: salesController.selectedCustomerForIndent?.avatar !=
                            null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              salesController.selectedCustomerForIndent!.avatar
                                  .toString(),
                              fit: BoxFit.cover,
                            ),
                          )
                        : null,
                  ),
                  const Gap(12),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Customer Name",
                        style: TextStyle(
                          color: Color(0xFFACACAC),
                          fontSize: 10,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                          salesController
                                  .selectedCustomerForIndent?.first_name ??
                              salesController
                                  .selectedCustomerForIndent?.last_name ??
                              "",
                          style: const TextStyle(
                            color: Color(0xFF353535),
                            fontSize: 18,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        salesController.selectedCustomerForIndent = null;
                        salesController.update();
                      },
                      icon: Container(
                        width: 64,
                        height: 33,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 4),
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFFD2D5),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0x33E23744)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Image.asset("assets/icons/Trash (R) FIlled.png"),
                      )),
                ],
              ).paddingSymmetric(horizontal: 12, vertical: 22),
            ).paddingSymmetric(vertical: 4)
          : Container(
              decoration: ShapeDecoration(
                color: const Color(0xFFFAF9FF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CommonTextField(
                          onChanged: (p0) {
                            deb.debounce(() {
                              setState(() {
                                searching = true;
                              });
                              Get.find<SalesController>()
                                  .salesRepo
                                  .getCustomers(
                                    recordsPerPage: 5,
                                    page: 1,
                                    name: p0.isNum ? "" : p0,
                                    phone_no: !p0.isNum ? "" : p0,
                                  )
                                  .then((v) {
                                setState(() {
                                  customerList = v;
                                  searching = false;
                                });
                              });
                            });
                          },
                          labelText: 'Customer Name',
                          containerColor: Colors.white,
                          suffixIcon: Image.asset(
                            "assets/icons/search-normal.png",
                            height: 4,
                          ).paddingSymmetric(vertical: 12),
                        ),
                      ),
                      const Gap(8),
                      InkWell(
                        onTap: () {
                          Get.dialog(
                              AlertDialog(
                                  contentPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  content: TagContainer(
                                    title: "Add Customer",
                                    child: SizedBox(
                                        width: 500, child: AddCompanyDialog()),
                                  )),
                              barrierDismissible: false,
                              navigatorKey: Get.nestedKey(salesNavigationKey));

                          // Get.dialog(AddCompanyDialog());
                        },
                        child: Container(
                          width: 47,
                          height: 46,
                          alignment: Alignment.center,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF5A57FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ).paddingOnly(top: 25),
                      )
                    ],
                  ),
                  searching
                      ? Center(
                          child: LoadingAnimationWidget.staggeredDotsWave(
                            color: AppColors.primaryColor,
                            size: 60,
                          ).paddingSymmetric(vertical: 12),
                        )
                      : customerList == null
                          ? Container()
                          : Column(
                              children:
                                  List.generate(customerList!.length, (i) {
                                return InkWell(
                                  onTap: () {
                                    salesController.selectedCustomerForIndent =
                                        customerList![i];
                                    salesController.update();
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      border: Border(
                                        left: BorderSide(
                                            width: 1, color: Color(0x195E57FC)),
                                        top: BorderSide(
                                            width: 1, color: Color(0x195E57FC)),
                                        right: BorderSide(
                                            width: 1, color: Color(0x195E57FC)),
                                        bottom: BorderSide(
                                            color: Color(0x195E57FC)),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 30.0,
                                          backgroundColor: const Color.fromARGB(
                                              255, 238, 237, 237),
                                          backgroundImage: customerList![i]
                                                      .avatar !=
                                                  null
                                              ? null
                                              : const AssetImage(
                                                  "assets/icons/customerAvatar.png"),
                                          child: customerList![i].avatar != null
                                              ? ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  child: Image.network(
                                                    customerList![i]
                                                        .avatar
                                                        .toString(),
                                                    fit: BoxFit.cover,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        const Gap(12),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                customerList![i].first_name ??
                                                    customerList![i]
                                                        .last_name ??
                                                    "",
                                                style: const TextStyle(
                                                  color: Color(0xFF353535),
                                                  fontSize: 14,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    customerList![i]
                                                            .company_name ??
                                                        "",
                                                    style: const TextStyle(
                                                      color: Color(0xFF5A57FF),
                                                      fontSize: 8,
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Text(
                                                    customerList![i].phone ??
                                                        "",
                                                    style: const TextStyle(
                                                      color: Color(0xFF5A57FF),
                                                      fontSize: 8,
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ).paddingSymmetric(
                                        vertical: 6, horizontal: 8),
                                  ),
                                );
                              }),
                            ).paddingSymmetric(vertical: 12, horizontal: 0),
                ],
              ).paddingSymmetric(vertical: 12, horizontal: 12),
            );
    });
  }
}
