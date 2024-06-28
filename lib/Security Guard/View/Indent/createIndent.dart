import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Auth/widgets/commonTextField.dart';
import 'package:moolwmsstore/Security%20Guard/Controllers/securityGuardController.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonButtons.dart';
import 'package:moolwmsstore/View/common/tagContainer.dart';

class CreateIndentScreen extends StatefulWidget {
  const CreateIndentScreen({super.key});

  @override
  State<CreateIndentScreen> createState() => _CreateIndentScreenState();
}

class _CreateIndentScreenState extends State<CreateIndentScreen> {
  TextEditingController personName = TextEditingController();
  TextEditingController mobileNumber = TextEditingController();
  TextEditingController vehicleNumber = TextEditingController();
  TextEditingController vehicleType = TextEditingController();
  TextEditingController driverName = TextEditingController();
  TextEditingController productName = TextEditingController();
  TextEditingController productQuantity = TextEditingController();
  TextEditingController productPrice = TextEditingController();
  bool isCheckedYesVehicle = false;
  bool isCheckedNoVehicle = false;
  bool isCheckedYesMaterial = false;
  bool isCheckedNoMaterial = false;
  final _formKey = GlobalKey<FormState>();
  User? user;
  int? warehouseId;
  List<Widget> productContainers = [];
  List<Map<String, TextEditingController>> productControllers = [];
  oninit() {
    warehouseId =
        Get.find<SecurityGuardController>().currentlySelectedWarehouseId;
  }

  Widget _buildProductContainer() {
    TextEditingController productNameController = TextEditingController();
    TextEditingController productQuantityController = TextEditingController();
    TextEditingController productUnitController = TextEditingController();
    productControllers.add({
      'productName': productNameController,
      'productQuantity': productQuantityController,
      'productUnit': productUnitController,
    });

    return TagContainer(
      title: 'Product Name',
      child: Column(
        children: [
          CommonTextField(
            controller: productNameController,
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
            controller: productQuantityController,
            textCapitalization: TextCapitalization.characters,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter quantity';
              }
              return null;
            },
            labelText: "Quantity",
            hintText: "Enter Quantity",
          ),
          const Gap(16),
          CommonTextField(
            controller: productUnitController,
            textCapitalization: TextCapitalization.characters,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter units';
              }
              return null;
            },
            labelText: "Units",
            hintText: "Enter Units",
          ),
          const Gap(16),
        ],
      ).paddingSymmetric(vertical: 16, horizontal: 16),
    );
  }

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
                      vehicleType: vehicleType.text,
                      doesHaveMaterial: 'YES',
                      products: productControllers.map((product) {
                        return {
                          "productName": product['productName']?.text ?? '',
                          "productQuantity":
                              product['productQuantity']?.text ?? '',
                          "productUnit": product['productUnit']?.text ?? '',
                        };
                      }).toList(),
                      status: 'IN',
                    );
                  }
                },
              );
      }),
      appBar: AppBar(
        title: const Text(
          'Create Indent',
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
                        },
                        labelText: "Mobile Number",
                        hintText: "Mobile Number",
                      ),
                      const Gap(16),
                    ],
                  ).paddingSymmetric(vertical: 16, horizontal: 16),
                ),
                const Gap(10),
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
                        controller: vehicleType,
                        textCapitalization: TextCapitalization.words,
                        labelText: "Vehicle Type",
                        hintText: "Enter type",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your vehicle type.';
                          }
                          return null;
                        },
                        onChanged: (value) {},
                      ),
                      const Gap(16),
                    ],
                  ).paddingSymmetric(vertical: 16, horizontal: 16),
                ),
                const Gap(20),
                Column(
                  children: productContainers,
                ),
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
                            productContainers.add(_buildProductContainer());
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
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
