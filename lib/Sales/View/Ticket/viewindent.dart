import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:moolwmsstore/Sales/Model/Indent/indentElement.dart';
import 'package:moolwmsstore/Sales/Model/Indent/viewIndentModel.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/utils/dimensions.dart';

class Viewindent extends StatelessWidget {
  IndentElement indentElement;
  Viewindent({super.key, required this.indentElement});
  DateFormat dateformatter = DateFormat('MMM d, yyyy');
  DateFormat timeformatter = DateFormat('h:mm a');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'View Indent',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: GetBuilder<SalesController>(initState: (state) {
        Get.find<SalesController>()
            .viewindent(indentId: indentElement.ticket_id ?? "");
      }, builder: (salesController) {
        //  salesController.indent.product_details
        if (salesController.loading) {
          return const Center(
              child: SpinKitDoubleBounce(
            color: Color(0xFF5A57FF),
          ));
        }
        return SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/icons/calendar.png",
                    height: 16,
                    color: const Color(0xFF5A57FF),
                  ).paddingSymmetric(horizontal: 8),
                  Text(
                    dateformatter
                        .format(salesController.indent!.created_at as DateTime),
                    style: const TextStyle(
                      color: Color(0xFF5A57FF),
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/icons/Clock Icon (R).png",
                    height: 18,
                    color: const Color(0xFF5A57FF),
                  ).paddingSymmetric(horizontal: 8),
                  Text(
                    timeformatter
                        .format(salesController.indent!.created_at as DateTime),
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
                  child: Text.rich(
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
                          text: salesController.indent!.ticket_id ?? "--",
                          style: const TextStyle(
                            color: Color(0xFF353535),
                            fontSize: 12,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )).paddingOnly(bottom: 12),
              Accordion(
                paddingListBottom: 0,
                paddingListTop: 12,
                disableScrolling: true,
                paddingListHorizontal: 0,
                headerBorderRadius: 10,
                headerBorderColor: Colors.blueGrey,
                headerBorderColorOpened: Colors.transparent,
                contentBackgroundColor: Colors.white,
                contentHorizontalPadding: 0,
                contentVerticalPadding: 0,
                headerBackgroundColor: const Color(0xFF5A57FF),
                scaleWhenAnimating: true,
                openAndCloseAnimation: true,
                headerPadding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                sectionClosingHapticFeedback: SectionHapticFeedback.light,
                children: [
                  AccordionSection(
                    headerBackgroundColorOpened: const Color(0xFF5A57FF),
                    contentBorderColor: Colors.transparent,
                    isOpen: false,
                    contentVerticalPadding: 2,
                    header: const Row(
                      children: [
                        Text(
                          'Company Details',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    content: Container(
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFAF9FF),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0x195A57FF)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ComapnyTitle(
                              title: 'Call From',
                              company: salesController
                                      .indent!.call_from_seller_company ??
                                  "--"),
                          const Gap(18),
                          ComapnyTitle(
                              title: 'Bill To',
                              company: salesController
                                      .indent!.bill_to_seller_companany ??
                                  "--"),
                          const Gap(18),
                          ComapnyTitle(
                              title: 'Shipped From',
                              company: salesController
                                      .indent!.ship_from_seller_companany ??
                                  "--"),
                          const Gap(18),
                          ComapnyTitle(
                              title: 'Shipped To',
                              company: salesController
                                      .indent!.ship_to_seller_companany ??
                                  "--"),
                        ],
                      ).paddingSymmetric(horizontal: 12, vertical: 22),
                    ),
                  ),
                ],
              ),
              Accordion(
                paddingListBottom: 0,
                paddingListTop: 0,
                disableScrolling: true,
                paddingListHorizontal: 0,
                headerBorderRadius: 10,
                headerBorderColor: Colors.blueGrey,
                headerBorderColorOpened: Colors.transparent,
                contentBackgroundColor: Colors.white,
                contentHorizontalPadding: 0,
                contentVerticalPadding: 0,
                headerBackgroundColor: const Color(0xFF5A57FF),
                scaleWhenAnimating: true,
                openAndCloseAnimation: true,
                headerPadding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                sectionClosingHapticFeedback: SectionHapticFeedback.light,
                children: [
                  AccordionSection(
                      headerBackgroundColorOpened: const Color(0xFF5A57FF),
                      contentBorderColor: Colors.transparent,
                      isOpen: false,
                      contentVerticalPadding: 2,
                      header: const Row(
                        children: [
                          Text(
                            'Product Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      content: Container(
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFAF9FF),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0x195A57FF)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                              salesController.indent!.product_details?.length ??
                                  0, (i) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Product(
                                  product: salesController
                                      .indent!.product_details![i],
                                ).paddingSymmetric(
                                    vertical: 12, horizontal: 12),
                                if (i <
                                    (salesController
                                            .indent!.product_details!.length -
                                        1))
                                  const Divider(
                                    color: Color(0x195A57FF),
                                  )
                              ],
                            );
                          }),
                        ),
                      )),
                ],
              ),
              ListView.builder(
                itemCount: salesController.indent!.check_ins!.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    height: 187,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFFAF9FF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x195A57FF)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 98,
                              height: 27,
                              alignment: Alignment.center,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFB9FFEA),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0x1902A676)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: const Text(
                                'Checked In',
                                style: TextStyle(
                                  color: Color(0xFF02A676),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 27,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: ShapeDecoration(
                                color: const Color(0xFFEAE9FF),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0x195A57FF)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    "assets/icons/calendar.png",
                                    height: 10,
                                    color: const Color(0xFF5A57FF),
                                  ).paddingSymmetric(horizontal: 8),
                                  Text(
                                    dateformatter.format(salesController
                                        .indent!.created_at as DateTime),
                                    style: const TextStyle(
                                      color: Color(0xFF5A57FF),
                                      fontSize: 8,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const Gap(10),
                                  Image.asset(
                                    "assets/icons/Clock Icon (R).png",
                                    height: 10,
                                    color: const Color(0xFF5A57FF),
                                  ).paddingSymmetric(horizontal: 8),
                                  Text(
                                    timeformatter.format(salesController
                                        .indent!.created_at as DateTime),
                                    style: const TextStyle(
                                      color: Color(0xFF5A57FF),
                                      fontSize: 8,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Warehouse Name',
                                    style: TextStyle(
                                      color: Color(0xFFACACAC),
                                      fontSize: 10,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    'PixelGenix Solutions',
                                    style: TextStyle(
                                      color: Color(0xFF353535),
                                      fontSize: 14,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Vehicle Number',
                                    style: TextStyle(
                                      color: Color(0xFFACACAC),
                                      fontSize: 10,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    'LS 12 0014',
                                    style: TextStyle(
                                      color: Color(0xFF353535),
                                      fontSize: 14,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            // Expanded(
                            //   flex: 2,
                            //   child: Column(
                            //     crossAxisAlignment: CrossAxisAlignment.start,
                            //     mainAxisSize: MainAxisSize.min,
                            //     children: [
                            //       Text(
                            //         'Total Price',
                            //         style: TextStyle(
                            //           color: Color(0xFFACACAC),
                            //           fontSize: 10,
                            //           fontFamily: 'SF Pro Display',
                            //           fontWeight: FontWeight.w400,
                            //         ),
                            //       ),
                            //       Text(
                            //         'Rs 36000',
                            //         style: TextStyle(
                            //           color: Color(0xFF353535),
                            //           fontSize: 14,
                            //           fontFamily: 'SF Pro Display',
                            //           fontWeight: FontWeight.w500,
                            //         ),
                            //       )
                            //     ],
                            //   ),
                            // ),
                          ],
                        ).paddingSymmetric(vertical: 8)
                      ],
                    ).paddingAll(12),
                  ).paddingSymmetric(vertical: 12);
                },
              )
            ],
          ),
        ).paddingSymmetric(
            horizontal: Dimensions.horizontalBodyPad,
            vertical: Dimensions.vericalBodyPad);
      }),
    );
  }
}

class ComapnyTitle extends StatelessWidget {
  String title;
  String company;
  ComapnyTitle(
      {super.key, required this.title, required this.company, required});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Image.asset(
              "assets/icons/Line 44.png",
              color: Colors.black,
              height: 8,
            ).paddingOnly(right: 12),
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFFACACAC),
                fontSize: 14,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        // const Gap(2),
        Row(
          children: [
            Image.asset(
              "assets/icons/Line 44.png",
              height: 8,
              color: Colors.transparent,
            ).paddingOnly(right: 12),
            Text(
              company,
              style: const TextStyle(
                color: Color(0xFF353535),
                fontSize: 22,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            )
          ],
        ),
      ],
    );
  }
}

class Product extends StatelessWidget {
  ProductsIndentViewModel product;
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

    const BoxDecoration f = BoxDecoration(
        border: Border(
      bottom: BorderSide(width: 1, color: Color(0x195A57FF)),
    ));

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
                    decoration: f,
                    child: Text(product.product_name ?? "--", style: titleStyle)
                        .paddingSymmetric(vertical: 4)),
                const Gap(8),
                const Text(
                  'Quantity ',
                  style: subtitleStyle,
                ),
                Container(
                    decoration: f,
                    child: Text("${product.qty ?? "--"}", style: titleStyle)),
                const Gap(8),
                const Text(
                  'MRP',
                  style: subtitleStyle,
                ),
                Container(
                    decoration: f,
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
                    'Product Number',
                    style: subtitleStyle,
                  ),
                  Container(
                      decoration: f,
                      child:
                          Text(product.product_no ?? "--", style: titleStyle)),
                  const Gap(8),
                  const Text(
                    'Unit',
                    style: subtitleStyle,
                  ),
                  Container(
                      decoration: f,
                      child:
                          Text("${product.unit ?? "--"}", style: titleStyle)),
                  const Gap(8),
                  const Text(
                    'GST',
                    style: subtitleStyle,
                  ),
                  Container(
                      decoration: f,
                      child: const Text(" product.gst", style: titleStyle)),
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
                      decoration: f,
                      child:
                          Text(product.hsn_number ?? "--", style: titleStyle)),
                  const Gap(8),
                  const Text(
                    'Expiry Date',
                    style: subtitleStyle,
                  ),
                  Container(
                      decoration: f,
                      child: const Text("expiryDate", style: titleStyle)),
                  const Gap(8),
                  const Text(
                    'Total Price',
                    style: subtitleStyle,
                  ),
                  Container(
                      decoration: f,
                      child:
                          Text("${product.total ?? "--"}", style: titleStyle)),
                ],
              ),
            )),
      ],
    );
  }
}
