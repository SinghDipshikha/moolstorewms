import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Security%20Guard/Controllers/securityGuardController.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/ticket.dart';
import 'package:moolwmsstore/View/common/tagContainer.dart';

class TicketEntryReviewScreenForSL extends StatefulWidget {
  String? indentElement;
  TicketEntryReviewScreenForSL({super.key, required this.indentElement});

  @override
  State<TicketEntryReviewScreenForSL> createState() =>
      _TicketEntryReviewScreenForSLState();
}

class _TicketEntryReviewScreenForSLState
    extends State<TicketEntryReviewScreenForSL> {
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
            if (sgController.vehicleDetails == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Column(
              children: [
                const Gap(20),
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
                      side:
                          const BorderSide(width: 1, color: Color(0x195A57FF)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Indent ID: ${sgController.indentBySl!.indent_number}, ',
                        style: const TextStyle(
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
                                    '${sgController.vehicleDetails!.driver_name}',
                              ),
                              const Gap(16),
                              PersonalInfoTitle(
                                title: 'Person Mobile No.',
                                value:
                                    '${sgController.vehicleDetails!.vehicle_number}',
                              ),
                              const Gap(16),
                            ],
                          ).paddingSymmetric(vertical: 16, horizontal: 16)),
                      const Gap(20),
                      TagContainer(
                          title: 'Vehicle Number',
                          child: Column(
                            children: [
                              PersonalInfoTitle(
                                title: 'Vehicle Number',
                                value:
                                    '${sgController.vehicleDetails!.vehicle_number}',
                              ),
                              const Gap(16),
                              PersonalInfoTitle(
                                title: 'Driver Name',
                                value:
                                    '${sgController.vehicleDetails!.driver_name}',
                              ),
                              const Gap(16),
                            ],
                          ).paddingSymmetric(vertical: 16, horizontal: 16)),
                      const Gap(20),
                      ...List.generate(sgController.productDetails!.length,
                          (i) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TagContainer(
                            title: 'Product Information',
                            child: ProductView(
                              product: sgController.productDetails![i],
                              productTitleValue: sgController.indentBySl!
                                  .product_details![i].product_name!,
                              productQtyValue: sgController
                                  .indentBySl!.product_details![i].qty!
                                  .toString(),
                              productUnitValue: sgController
                                  .indentBySl!.product_details![i].unit!
                                  .toString(),
                            ).paddingSymmetric(vertical: 10),
                          ),
                        );
                      }),
                      const Gap(20),
                      // TagContainer(
                      //   title: 'Product Information',
                      //   child: Column(
                      //     children: [
                      //       ...List.generate(
                      //           sgController
                      //               .indentBySl!.product_details!.length, (i) {
                      //         return ProductView(
                      //           product: sgController
                      //               .indentBySl!.product_details![i],
                      //           title: '',
                      //           value: '',
                      //         ).paddingSymmetric(vertical: 6);
                      //       })
                      //     ],
                      //   ),
                      // ),
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
                          InkWell(
                            onTap: () {
                              Get.find<SecurityGuardController>()
                                  .verifyPoIndent(
                                      status: "IN",
                                      sellerPurchaseOrder: sgController
                                          .indentBySl!.id,
                                      vehicleNumber: sgController.indentBySl!
                                          .vehicle_details!.vehicle_number,
                                      indentNumber: sgController
                                          .indentBySl!.indent_number);
                            },
                            child: Container(
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

class ProductView extends StatelessWidget {
  ProductElement product;

  String productTitleValue;

  String productQtyValue;

  String productUnitValue;

  ProductView({
    super.key,
    required this.product,
    required this.productTitleValue,
    required this.productQtyValue,
    required this.productUnitValue,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Product Name',
                style: TextStyle(
                  color: Color(0xFF595959),
                  fontSize: 16,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  //height: 1,
                ),
              ),
              Container(
                width: 310,
                height: 36,
                padding: const EdgeInsets.only(
                    top: 5, left: 20, right: 10, bottom: 5),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x195E57FC)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  productTitleValue,
                  style: const TextStyle(
                    color: Color(0xFF353535),
                    fontSize: 18,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
          const Gap(20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Product Qty',
                style: TextStyle(
                  color: Color(0xFF595959),
                  fontSize: 16,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  //height: 1,
                ),
              ),
              Container(
                width: 310,
                height: 36,
                padding: const EdgeInsets.only(
                    top: 5, left: 20, right: 10, bottom: 5),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x195E57FC)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  productQtyValue,
                  style: const TextStyle(
                    color: Color(0xFF353535),
                    fontSize: 18,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
          const Gap(20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Product Unit',
                style: TextStyle(
                  color: Color(0xFF595959),
                  fontSize: 16,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  //height: 1,
                ),
              ),
              Container(
                width: 310,
                height: 36,
                padding: const EdgeInsets.only(
                    top: 5, left: 20, right: 10, bottom: 5),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x195E57FC)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  productUnitValue,
                  style: const TextStyle(
                    color: Color(0xFF353535),
                    fontSize: 18,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
          const Gap(20),
        ],
      ),
    );
  }
}
