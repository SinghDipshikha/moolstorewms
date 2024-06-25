import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Auth/widgets/commonTextField.dart';
import 'package:moolwmsstore/Security%20Guard/Controllers/securityGuardController.dart';
import 'package:moolwmsstore/Security%20Guard/View/securityGuardDashboard.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonAppBar.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonButtons.dart';
import 'package:moolwmsstore/View/common/tagContainer.dart';
import 'package:moolwmsstore/utils/globals.dart';

class AddTicketScreen extends StatefulWidget {
  const AddTicketScreen({super.key});

  @override
  State<AddTicketScreen> createState() => _AddTicketScreenState();
}

class _AddTicketScreenState extends State<AddTicketScreen> {
  @override
  TextEditingController personName = TextEditingController();
  TextEditingController mobileNumber = TextEditingController();
  TextEditingController vehicleNumber = TextEditingController();
  TextEditingController driverName = TextEditingController();
  TextEditingController controller = TextEditingController();
  TextEditingController productName = TextEditingController();
  TextEditingController productQuantity = TextEditingController();
  TextEditingController productPrice = TextEditingController();
  bool isCheckedYesVehicle = false;
  bool isCheckedNoVehicle = false;
  bool isCheckedYesMaterial = false;
  bool isCheckedNoMaterial = false;
  bool isCheckedYesAddProduct = false;
  final _formKey = GlobalKey<FormState>();
  User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GetBuilder<SecurityGuardController>(
          builder: (securityGuardController) {
        return securityGuardController.isloading
            ? const SpinKitWave(
                color: Color(0xFF5A57FF),
              )
            : CustomFloatingActionButton(
                title: 'Next',
                color: const Color(0xFF5A57FF),
                textColor: Colors.white,
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    securityGuardController.addTicketBySecurityGuard(
                      ticketGeneratedBy: 2,
                      personName: personName.text,
                      mobileNumber: mobileNumber.text,
                      doesHaveVehicle: 'YES',
                      vehicleNumber: vehicleNumber.text,
                      doesHaveMaterial: 'YES',
                      status: 'IN',
                      products: [
                        {
                          "productName": productName.text,
                          "productQuantity": productQuantity.text,
                          "productUnit": productPrice.text,
                        }
                      ],
                    );
                  }
                },
              );
      }),
      appBar: AppBar(
          title: const Text(
            'Add Ticket',
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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TagContainer(
                    title: 'Person Information',
                    child: Column(
                      children: [
                        CommonTextField(
                          controller: personName,
                          textCapitalization: TextCapitalization.words,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter Product name.';
                            }

                            return null;
                          },
                          labelText: 'Person Name',
                          hintText: 'Enter your person’s name',
                        ),
                        const Gap(16),
                        CommonTextField(
                          controller: mobileNumber,
                          textCapitalization: TextCapitalization.characters,
                          validator: (value) {
                            return null;

                            // if (value!.isEmpty) {
                            //   return 'Please enter mobile number.';
                            // }

                            // if (!GlobalValidator.isValidPAN(value)) {
                            //   return 'Please enter a valid mobile number..';
                            // }

                            // return null;
                          },
                          labelText: "Mobile Number",
                          hintText: "Mobile Number",
                        ),
                        const Gap(16),
                      ],
                    ).paddingSymmetric(vertical: 16, horizontal: 16)),
                const Gap(10),
                // Container(
                //   constraints: context.isPhone
                //       ? null
                //       : const BoxConstraints(maxWidth: 520),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Padding(
                //         padding: const EdgeInsets.only(top: 8.0),
                //         child: const Text(
                //           'Does visitor have any vehicle?',
                //           style: TextStyle(fontSize: 16.0),
                //         ).paddingOnly(top: 5),
                //       ),
                //       Checkbox(
                //         value: isCheckedYesVehicle,
                //         onChanged: (value) {
                //           setState(() {
                //             isCheckedYesVehicle = value!;
                //           });
                //         },
                //         side: const BorderSide(
                //           color: Colors.grey,
                //           width: 1.5,
                //         ),
                //       ),
                //       Checkbox(
                //         value: isCheckedNoVehicle,
                //         onChanged: (value) {
                //           setState(() {
                //             isCheckedNoVehicle = value!;
                //           });
                //         },
                //         side: const BorderSide(
                //           color: Colors.grey,
                //           width: 1.5,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // // if (isCheckedYesVehicle)
                TagContainer(
                    title: 'Vehicle Number',
                    child: Column(
                      children: [
                        CommonTextField(
                          controller: vehicleNumber,
                          textCapitalization: TextCapitalization.words,
                          labelText: "Vehicle Number",
                          hintText: "Enter full vehicle number",
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your vehicle number.';
                            }

                            return null;
                          },
                          onChanged: (value) {},
                        ),
                        const Gap(16),
                        CommonTextField(
                          controller: driverName,
                          textCapitalization: TextCapitalization.words,
                          labelText: "Driver Name",
                          hintText: "Enter full name",
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your driver name.';
                            }

                            return null;
                          },
                          onChanged: (value) {},
                        ),
                        const Gap(16),
                      ],
                    ).paddingSymmetric(vertical: 16, horizontal: 16)),
                // Container(
                //   constraints: context.isPhone
                //       ? null
                //       : const BoxConstraints(maxWidth: 520),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Padding(
                //         padding: const EdgeInsets.only(top: 8.0, right: 20),
                //         child: const Text(
                //           'Material inside the vehicle?',
                //           style: TextStyle(fontSize: 16.0),
                //         ).paddingOnly(top: 5),
                //       ),
                //       Checkbox(
                //         value: isCheckedYesMaterial,
                //         onChanged: (value) {
                //           setState(() {
                //             isCheckedYesMaterial = value!;
                //           });
                //         },
                //         side: const BorderSide(
                //           color: Colors.grey,
                //           width: 1.5,
                //         ),
                //       ),
                //       Checkbox(
                //         value: isCheckedNoMaterial,
                //         onChanged: (value) {
                //           setState(() {
                //             isCheckedNoMaterial = value!;
                //           });
                //         },
                //         side: const BorderSide(
                //           color: Colors.grey,
                //           width: 1.5,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                // if (isCheckedYesMaterial && isCheckedYesVehicle)
                TagContainer(
                    title: 'Product Name',
                    child: Column(
                      children: [
                        CommonTextField(
                          controller: productName,
                          textCapitalization: TextCapitalization.words,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter Product name.';
                            }

                            return null;
                          },
                          labelText: 'Product Name',
                          hintText: 'Enter your product’s name',
                        ),
                        const Gap(16),
                        CommonTextField(
                          controller: productQuantity,
                          textCapitalization: TextCapitalization.characters,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter quantity';
                            }

                            // if (!GlobalValidator.isValidPAN(value)) {
                            //   return 'Please enter a valid quantity.';
                            // }

                            return null;
                          },
                          //  validator: ,
                          // inputFormatters: [
                          //   FilteringTextInputFormatter.allow(
                          //       RegExp(r"^[A-Z]{5}[0-9]{4}[A-Z]{1}$"))
                          // ],
                          labelText: "Quantity",
                          hintText: "Enter Quantity",
                        ),
                        const Gap(16),
                        CommonTextField(
                          controller: productPrice,
                          textCapitalization: TextCapitalization.characters,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter units';
                            }

                            // if (!GlobalValidator.(value)) {
                            //   return 'Please enter a valid units.';
                            // }

                            return null;
                          },
                          //  validator: ,
                          // inputFormatters: [
                          //   FilteringTextInputFormatter.allow(
                          //       RegExp(r"^[A-Z]{5}[0-9]{4}[A-Z]{1}$"))
                          // ],
                          labelText: "Units",
                          hintText: "Enter Units",
                        ),
                        const Gap(16),
                      ],
                    ).paddingSymmetric(vertical: 16, horizontal: 16)),
                const Gap(20),
                // if (isCheckedYesMaterial)
                Container(
                  constraints: context.isPhone
                      ? null
                      : const BoxConstraints(maxWidth: 520),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, right: 20),
                        child: const Text(
                          'Do you have another product',
                          style: TextStyle(fontSize: 16.0),
                        ).paddingOnly(top: 5),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isCheckedYesAddProduct = !isCheckedYesAddProduct;
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF5A57FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Add Product',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w600,
                                //height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(20),

                if (isCheckedYesAddProduct)
                  TagContainer(
                      title: 'Product Name',
                      child: Column(
                        children: [
                          CommonTextField(
                            controller: productName,
                            textCapitalization: TextCapitalization.words,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter Product name.';
                              }

                              return null;
                            },
                            labelText: 'Product Name',
                            hintText: 'Enter your product’s name',
                          ),
                          const Gap(16),
                          CommonTextField(
                            controller: productQuantity,
                            textCapitalization: TextCapitalization.characters,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter quantity';
                              }

                              // if (!GlobalValidator.isValidPAN(value)) {
                              //   return 'Please enter a valid quantity.';
                              // }

                              return null;
                            },
                            //  validator: ,
                            // inputFormatters: [
                            //   FilteringTextInputFormatter.allow(
                            //       RegExp(r"^[A-Z]{5}[0-9]{4}[A-Z]{1}$"))
                            // ],
                            labelText: "Quantity",
                            hintText: "Enter Quantity",
                          ),
                          const Gap(16),
                          CommonTextField(
                            controller: productPrice,
                            textCapitalization: TextCapitalization.characters,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter units';
                              }

                              // if (!GlobalValidator.isValidPAN(value)) {
                              //   return 'Please enter a valid units.';
                              // }

                              return null;
                            },
                            //  validator: ,
                            // inputFormatters: [
                            //   FilteringTextInputFormatter.allow(
                            //       RegExp(r"^[A-Z]{5}[0-9]{4}[A-Z]{1}$"))
                            // ],
                            labelText: "Units",
                            hintText: "Enter Units",
                          ),
                          const Gap(16),
                        ],
                      ).paddingSymmetric(vertical: 16, horizontal: 16)),
                const Gap(100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
