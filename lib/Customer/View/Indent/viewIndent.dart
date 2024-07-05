import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:moolwmsstore/Sales/Model/Indent/indentElement.dart';
import 'package:moolwmsstore/Sales/Model/enterProduct.dart';
import 'package:moolwmsstore/Sales/View/common/widgets/titleContainer.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:moolwmsstore/utils/dimensions.dart';

class ViewIndent extends StatelessWidget {
  IndentElement indentElement;
  ViewIndent({super.key, required this.indentElement});
  DateFormat dateformatter = DateFormat('MMM d, yyyy');
  DateFormat timeformatter = DateFormat('h:mm a');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('View Indent', style: TextStyles.appBarTextStyle),
      ),
      body: GetBuilder<SalesController>(initState: (state) {
        Get.find<SalesController>()
            .viewindent(indentId: indentElement.indent_number ?? "");
      }, builder: (salesController) {
        if (salesController.loading) {
          return const Center(
              child: SpinKitDoubleBounce(
            color: Color(0xFF5A57FF),
          ));
        }
        const TextStyle subtitleStyle = TextStyle(
          color: Color(0xFF808080),
          fontSize: 10,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        );
        const TextStyle titleStyle = TextStyle(
          color: Color(0xFF353535),
          fontSize: 16,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        );
        return SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Created on : ',
                          style: TextStyle(
                            color: Color(0xFFACACAC),
                            fontSize: 12,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/icons/calendar.png",
                    height: 16,
                    color: const Color(0xFF5A57FF),
                  ).paddingSymmetric(horizontal: 8),
                  Text(
                    salesController.indent?.created_at == null
                        ? "--"
                        : dateformatter.format(
                            salesController.indent?.created_at as DateTime),
                    style: const TextStyle(
                      color: Color(0xFF5A57FF),
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Created at : ',
                          style: TextStyle(
                            color: Color(0xFFACACAC),
                            fontSize: 12,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/icons/Clock Icon (R).png",
                    height: 18,
                    color: const Color(0xFF5A57FF),
                  ).paddingSymmetric(horizontal: 8),
                  Text(
                    salesController.indent?.created_at == null
                        ? "--"
                        : timeformatter.format(
                            salesController.indent?.created_at as DateTime),
                    style: const TextStyle(
                      color: Color(0xFF5A57FF),
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ).paddingSymmetric(vertical: 12),
              Container(
                  height: 36,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFAF9FF),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0x195E57FC)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Indent Created by : ',
                              style: TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 12,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: salesController.indent!.name ?? "--",
                              style: const TextStyle(
                                color: Color(0xFF353535),
                                fontSize: 12,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(12),
                      Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Designation : ',
                              style: TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 12,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: (salesController.indent!.designation?[0] ??
                                      " --")
                                  .toUpperCase(),
                              style: const TextStyle(
                                color: Color(0xFF353535),
                                fontSize: 12,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )).paddingOnly(top: 12),
              Container(
                  height: 36,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFAF9FF),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0x195E57FC)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Indent ID : ',
                          style: TextStyle(
                            color: Color(0xFFACACAC),
                            fontSize: 12,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: salesController.indent!.indent_number ?? "--",
                          style: const TextStyle(
                            color: Color(0xFF353535),
                            fontSize: 12,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )),
              Container(
                width: double.infinity,
                height: 80,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage("assets/images/Mask group.png"))),
                child: Center(
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
                      Text(
                        salesController.indent?.warehouse_name ?? "--",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ).paddingSymmetric(vertical: 16),
              TitleContainer(
                title: "Customer Details",
                child: Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0x195A57FF)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 22.0,
                        backgroundColor:
                            const Color.fromARGB(255, 238, 237, 237),
                        backgroundImage:
                            salesController.indent!.customer_details!.avatar !=
                                    null
                                ? null
                                : const AssetImage(
                                    "assets/icons/customerAvatar.png"),
                        child:
                            salesController.indent!.customer_details!.avatar !=
                                    null
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.network(
                                      salesController
                                          .indent!.customer_details!.avatar
                                          .toString(),
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : null,
                      ),
                      const Gap(12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              salesController
                                      .indent!.customer_details!.first_name ??
                                  salesController
                                      .indent!.customer_details!.last_name ??
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
                                  salesController.indent!.customer_details!
                                          .company_name ??
                                      "--",
                                  style: const TextStyle(
                                    color: Color(0xFF5A57FF),
                                    fontSize: 8,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  salesController
                                          .indent!.customer_details!.phone ??
                                      "--",
                                  style: const TextStyle(
                                    color: Color(0xFF5A57FF),
                                    fontSize: 8,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  salesController.indent!.customer_details!
                                          .company_name ??
                                      "--",
                                  style: const TextStyle(
                                    color: Color(0xFF5A57FF),
                                    fontSize: 8,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  salesController
                                          .indent!.customer_details!.email ??
                                      "",
                                  style: const TextStyle(
                                    color: Color(0xFF5A57FF),
                                    fontSize: 8,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ).paddingAll(8),
                ).paddingSymmetric(vertical: 6),
              ),
              const Gap(12),
              TitleContainer(
                title: "Products Details",
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Minimum Temperature : ',
                                style: TextStyle(
                                  color: Color(0xFFACACAC),
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "${salesController.indent!.max_temperature ?? " --"} °c",
                                style: const TextStyle(
                                  color: Color(0xFF353535),
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(12),
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Max Temperature : ',
                                style: TextStyle(
                                  color: Color(0xFFACACAC),
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "${salesController.indent!.max_temperature ?? " --"} °c",
                                style: const TextStyle(
                                  color: Color(0xFF353535),
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ...List.generate(
                        salesController.indent!.product_details!.length, (i) {
                      return Container(
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0x195A57FF)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Product(
                            product:
                                salesController.indent!.product_details![i]),
                      ).paddingSymmetric(vertical: 6);
                    })
                  ],
                ),
              ),
              const Gap(12),
              TitleContainer(
                title: "Vehicle Details",
                child: Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0x195A57FF)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  const Text(
                                    'Driver Name',
                                    style: subtitleStyle,
                                  ),
                                  Container(
                                      child: Text(
                                              salesController
                                                      .indent!
                                                      .vehicle_details!
                                                      .driver_name ??
                                                  "--",
                                              style: titleStyle)
                                          .paddingSymmetric(vertical: 4)),
                                  const Gap(8),
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  const Text(
                                    'Vehicle Number',
                                    style: subtitleStyle,
                                  ),
                                  Container(
                                      child: Text(
                                              salesController
                                                      .indent!
                                                      .vehicle_details!
                                                      .vehicle_number ??
                                                  "--",
                                              style: titleStyle)
                                          .paddingSymmetric(vertical: 4)),
                                  const Gap(8),
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  const Text(
                                    'Vehicle Type',
                                    style: subtitleStyle,
                                  ),
                                  Container(
                                      child: Text(
                                              salesController
                                                      .indent!
                                                      .vehicle_details!
                                                      .vehicle_type ??
                                                  "--",
                                              style: titleStyle)
                                          .paddingSymmetric(vertical: 4)),
                                  const Gap(8),
                                ],
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  const Text(
                                    'Driver Phone Number',
                                    style: subtitleStyle,
                                  ),
                                  Container(
                                      child: Text(
                                              salesController
                                                      .indent!
                                                      .vehicle_details!
                                                      .driver_ph_number ??
                                                  "--",
                                              style: titleStyle)
                                          .paddingSymmetric(vertical: 4)),
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  const Text(
                                    'Expected Arrival Date and Time',
                                    style: subtitleStyle,
                                  ),
                                  Container(
                                      child: Text(
                                              salesController
                                                          .indent!
                                                          .vehicle_details!
                                                          .expected_date ==
                                                      null
                                                  ? "--"
                                                  : AppConstants.timeformatter
                                                      .format(salesController
                                                              .indent!
                                                              .vehicle_details!
                                                              .expected_date
                                                          as DateTime),
                                              style: titleStyle)
                                          .paddingSymmetric(vertical: 4)),
                                ],
                              )),
                        ],
                      ),
                    ],
                  ).paddingSymmetric(vertical: 12),
                ),
              ),
              const Gap(12)
            ],
          ),
        ).paddingSymmetric(
            horizontal: Dimensions.horizontalBodyPad,
            vertical: Dimensions.vericalBodyPad);
      }),
    );
  }
}

// class ComapnyTitle extends StatelessWidget {
//   String title;
//   String company;
//   ComapnyTitle(
//       {super.key, required this.title, required this.company, required});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Row(
//           children: [
//             Image.asset(
//               "assets/icons/Line 44.png",
//               color: Colors.black,
//               height: 8,
//             ).paddingOnly(right: 12),
//             Text(
//               title,
//               style: const TextStyle(
//                 color: Color(0xFFACACAC),
//                 fontSize: 14,
//                 fontFamily: 'SF Pro Display',
//                 fontWeight: FontWeight.w400,
//               ),
//             )
//           ],
//         ),
//         // const Gap(2),
//         Row(
//           children: [
//             Image.asset(
//               "assets/icons/Line 44.png",
//               height: 8,
//               color: Colors.transparent,
//             ).paddingOnly(right: 12),
//             Text(
//               company,
//               style: const TextStyle(
//                 color: Color(0xFF353535),
//                 fontSize: 22,
//                 fontFamily: 'SF Pro Display',
//                 fontWeight: FontWeight.w500,
//                 height: 0,
//               ),
//             )
//           ],
//         ),
//       ],
//     );
//   }

class Product extends StatelessWidget {
  EnterProduct product;
  Product({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    const TextStyle subtitleStyle = TextStyle(
      color: Color(0xFF808080),
      fontSize: 10,
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w400,
    );
    const TextStyle titleStyle = TextStyle(
      color: Color(0xFF353535),
      fontSize: 16,
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w500,
    );

    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Product Name',
                  style: subtitleStyle,
                ),
                Container(
                    child: Text(product.product_name ?? "--", style: titleStyle)
                        .paddingSymmetric(vertical: 4)),
                const Gap(8),
                const Text(
                  'Quantity ',
                  style: subtitleStyle,
                ),
                Container(
                    child: Text("${product.qty ?? "--"}", style: titleStyle)),
                const Gap(8),
                const Text(
                  'MRP',
                  style: subtitleStyle,
                ),
                Container(
                    child: Text("${product.mrp ?? "--"}", style: titleStyle)),
              ],
            )),
        Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'SKU ID',
                    style: subtitleStyle,
                  ),
                  Container(
                      child: Text(product.sku_id ?? "--", style: titleStyle)),
                  const Gap(8),
                  const Text(
                    'Unit',
                    style: subtitleStyle,
                  ),
                  Container(
                      child:
                          Text("${product.unit ?? "--"}", style: titleStyle)),
                  const Gap(8),
                  const Text(
                    'GST',
                    style: subtitleStyle,
                  ),
                  Container(
                      child: Text("${product.gst_rate ?? "--"}%",
                          style: titleStyle)),
                ],
              ),
            )),
        Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'HSN Number',
                    style: subtitleStyle,
                  ),
                  Container(
                      child:
                          Text(product.hsn_number ?? "--", style: titleStyle)),
                  const Gap(8),
                  const Text(
                    'Expiry Date',
                    style: subtitleStyle,
                  ),
                  Text(
                      product.expiry_date == null
                          ? "--"
                          : AppConstants.dayMonrhormatter
                              .format(product.expiry_date as DateTime),
                      style: titleStyle),
                  const Gap(8),
                  const Text(
                    'Total Price',
                    style: subtitleStyle,
                  ),
                  Container(
                      child:
                          Text("${product.total ?? "--"}", style: titleStyle)),
                ],
              ),
            )),
      ],
    ).paddingAll(12);
  }
}
