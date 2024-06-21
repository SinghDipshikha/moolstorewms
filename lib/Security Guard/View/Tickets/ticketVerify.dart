import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/widgets/commonTextField.dart';
import 'package:moolwmsstore/Hr/constants/validations.dart';
import 'package:moolwmsstore/Security%20Guard/Controllers/securityGuardController.dart';
import 'package:moolwmsstore/View/common/tagContainer.dart';

class TicketEntryReviewScreen extends StatefulWidget {
  String? indentElement;
  TicketEntryReviewScreen({super.key, required this.indentElement});

  @override
  State<TicketEntryReviewScreen> createState() =>
      _TicketEntryReviewScreenState();
}

class _TicketEntryReviewScreenState extends State<TicketEntryReviewScreen> {
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

  oninit() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Verify Ticket',
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
          child: GetBuilder<SecurityGuardController>(initState: (state) {
            Get.find<SecurityGuardController>()
                .viewIndent(indentId: widget.indentElement ?? "");
          }, builder: (sgController) {
            return Column(
              children: [
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Container(
                    //   width: 169,
                    //   height: 39,
                    //   padding: const EdgeInsets.only(
                    //     top: 10,
                    //     left: 30,
                    //     right: 10,
                    //     bottom: 10,
                    //   ),
                    //   decoration: ShapeDecoration(
                    //     shape: RoundedRectangleBorder(
                    //       side: const BorderSide(
                    //           width: 1, color: Color(0x195A57FF)),
                    //       borderRadius: BorderRadius.circular(30),
                    //     ),
                    //   ),
                    //   child: const Text(
                    //     'PO No. : 12345',
                    //     style: TextStyle(
                    //       color: Color(0xFFACACAC),
                    //       fontSize: 16,
                    //       fontFamily: 'SF Pro Display',
                    //       fontWeight: FontWeight.w400,
                    //       //height: 0,
                    //     ),
                    //   ),
                    // ),

                    Container(
                      height: 39,
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 30,
                        right: 10,
                        bottom: 10,
                      ),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0x195A57FF)),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Indent ID :'

                            // ${sgController.indent!.indent_number}
                            ,
                            style: TextStyle(
                              color: Color(0xFFACACAC),
                              fontSize: 16,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              //height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Gap(20),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: [
                      TagContainer(
                          title: 'Person Information',
                          child: Column(
                            children: [
                              PersonalInfoTitle(
                                  title: 'Person Name',
                                  value:
                                      //'${sgController.indent!.visitor_name}',
                                      ''),
                              // CommonTextField(
                              //   controller: personName,
                              //   textCapitalization: TextCapitalization.words,
                              //   validator: (value) {
                              //     if (value!.isEmpty) {
                              //       return 'Please enter Product name.';
                              //     }

                              //     return null;
                              //   },
                              //   labelText: 'Person Name',
                              //   hintText: 'Enter your person’s name',
                              // ),
                              const Gap(16),
                              PersonalInfoTitle(
                                  title: 'Person Name',
                                  value:
                                      // '${sgController.indent!.visitor_name}',
                                      ''),
                              // CommonTextField(
                              //   controller: mobileNumber,
                              //   textCapitalization:
                              //       TextCapitalization.characters,
                              //   validator: (value) {
                              //     if (value!.isEmpty) {
                              //       return 'Please enter mobile number.';
                              //     }

                              //     if (!GlobalValidator.isValidPAN(value)) {
                              //       return 'Please enter a valid mobile number..';
                              //     }

                              //     return null;
                              //   },
                              //   labelText: "Mobile Number",
                              //   hintText: "Mobile Number",
                              // ),
                              const Gap(16),
                            ],
                          ).paddingSymmetric(vertical: 16, horizontal: 16)),
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
                                textCapitalization:
                                    TextCapitalization.characters,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter quantity';
                                  }

                                  if (!GlobalValidator.isValidPAN(value)) {
                                    return 'Please enter a valid quantity.';
                                  }

                                  return null;
                                },
                                labelText: "Quantity",
                                hintText: "Enter Quantity",
                              ),
                              const Gap(16),
                              CommonTextField(
                                controller: productPrice,
                                textCapitalization:
                                    TextCapitalization.characters,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter units';
                                  }

                                  if (!GlobalValidator.isValidPAN(value)) {
                                    return 'Please enter a valid units.';
                                  }

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
                      if (isCheckedYesMaterial)
                        Container(
                          constraints: const BoxConstraints(maxWidth: 520),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, right: 20),
                                child: const Text(
                                  'Do you have another product',
                                  style: TextStyle(fontSize: 16.0),
                                ).paddingOnly(top: 5),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isCheckedYesAddProduct =
                                        !isCheckedYesAddProduct;
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
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      const Gap(20),
                      if (isCheckedYesAddProduct && isCheckedYesMaterial)
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
                                  textCapitalization:
                                      TextCapitalization.characters,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter quantity';
                                    }

                                    if (!GlobalValidator.isValidPAN(value)) {
                                      return 'Please enter a valid quantity.';
                                    }

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
                                  textCapitalization:
                                      TextCapitalization.characters,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter units';
                                    }

                                    if (!GlobalValidator.isValidPAN(value)) {
                                      return 'Please enter a valid units.';
                                    }

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
                      const Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 170,
                            height: 50,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFE23744),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Reject',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 170,
                            height: 50,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            decoration: ShapeDecoration(
                              color: const Color(0xFF04BF8A),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Approve',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Gap(60)
                    ],
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

class PersonalInfoTitle extends StatelessWidget {
  String title;
  String value;
  PersonalInfoTitle({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints:
            context.isPhone ? null : const BoxConstraints(maxWidth: 500),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: title,
                    style: const TextStyle(
                      color: Color(0xFF595959),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      //height: 1,
                    ),
                  ),
                ],
              ),
            ).paddingSymmetric(vertical: 4),
            Container(
              width: 310,
              height: 36,
              padding:
                  const EdgeInsets.only(top: 5, left: 20, right: 10, bottom: 5),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x195E57FC)),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text(
                value,
                style: const TextStyle(
                  color: Color(0xFF353535),
                  fontSize: 18,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ));
  }
}

// class Product extends StatelessWidget {
//   ProductsIndentViewModel product;
//   Product({super.key, required this.product});

//   @override
//   Widget build(BuildContext context) {
//     const TextStyle subtitleStyle = TextStyle(
//       color: Color(0xFF808080),
//       fontSize: 10,
//       fontFamily: 'SF Pro Display',
//       fontWeight: FontWeight.w400,
//     );
//     const TextStyle titleStyle = TextStyle(
//       color: Color(0xFF353535),
//       fontSize: 16,
//       fontFamily: 'SF Pro Display',
//       fontWeight: FontWeight.w500,
//     );

//     const BoxDecoration f = BoxDecoration(
//         border: Border(
//       bottom: BorderSide(width: 1, color: Color(0x195A57FF)),
//     ));

//     return Row(
//       children: [
//         Expanded(
//             flex: 1,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   'Product Name',
//                   style: subtitleStyle,
//                 ),
//                 Container(
//                     decoration: f,
//                     child: Text(product.product_name ?? "--", style: titleStyle)
//                         .paddingSymmetric(vertical: 4)),
//                 const Gap(8),
//                 const Text(
//                   'Quantity ',
//                   style: subtitleStyle,
//                 ),
//                 Container(
//                     decoration: f,
//                     child: Text("${product.qty ?? "--"}", style: titleStyle)),
//                 const Gap(8),
//                 const Text(
//                   'MRP',
//                   style: subtitleStyle,
//                 ),
//                 Container(
//                     decoration: f,
//                     child: Text("${product.mrp ?? "--"}", style: titleStyle)),
//               ],
//             )),
//         Expanded(
//             flex: 1,
//             child: Container(
//               alignment: Alignment.center,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'Product Number',
//                     style: subtitleStyle,
//                   ),
//                   Container(
//                       decoration: f,
//                       child:
//                           Text(product.product_no ?? "--", style: titleStyle)),
//                   const Gap(8),
//                   const Text(
//                     'Unit',
//                     style: subtitleStyle,
//                   ),
//                   Container(
//                       decoration: f,
//                       child:
//                           Text("${product.unit ?? "--"}", style: titleStyle)),
//                   const Gap(8),
//                   const Text(
//                     'GST',
//                     style: subtitleStyle,
//                   ),
//                   Container(
//                       decoration: f,
//                       child: const Text(" product.gst", style: titleStyle)),
//                 ],
//               ),
//             )),
//         Expanded(
//             flex: 1,
//             child: Container(
//               alignment: Alignment.centerRight,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'HSN Number',
//                     style: subtitleStyle,
//                   ),
//                   Container(
//                       decoration: f,
//                       child:
//                           Text(product.hsn_number ?? "--", style: titleStyle)),
//                   const Gap(8),
//                   const Text(
//                     'Expiry Date',
//                     style: subtitleStyle,
//                   ),
//                   Container(
//                       decoration: f,
//                       child: const Text("expiryDate", style: titleStyle)),
//                   const Gap(8),
//                   const Text(
//                     'Total Price',
//                     style: subtitleStyle,
//                   ),
//                   Container(
//                       decoration: f,
//                       child:
//                           Text("${product.total ?? "--"}", style: titleStyle)),
//                 ],
//               ),
//             )),
//       ],
//     );
//   }
// }
