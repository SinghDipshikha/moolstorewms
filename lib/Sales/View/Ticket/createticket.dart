import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Sales/Model/company.dart';
import 'package:moolwmsstore/Sales/View/Ticket/addCompanyDialog.dart';
import 'package:moolwmsstore/Sales/View/Ticket/enterProduct.dart';
import 'package:moolwmsstore/Sales/View/common/commonTextField.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/View/common/tagContainer.dart';
import 'package:throttling/throttling.dart';
// import 'package:throttling/throttling.dart';

class Createticket extends StatefulWidget {
  const Createticket({super.key});

  @override
  State<Createticket> createState() => _CreateticketState();
}

class _CreateticketState extends State<Createticket> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Create Ticket',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: GetBuilder<SalesController>(builder: (salesController) {
          return Form(
            key: _formKey,
            child: Column(
              children: [
                salesController.callFromCompany == null
                    ? SelectCompany(
                        title: "Call From",
                      )
                    : SelectedCompany(
                        title: "Call From",
                        company_name:
                            salesController.callFromCompany?.company_name ?? "",
                        onPressed: () {
                          salesController.callFromCompany = null;
                          salesController.update();
                        }),
                salesController.billToCompany == null
                    ? SelectCompany(
                        title: "Bill To",
                      )
                    : SelectedCompany(
                        title: "Bill To",
                        company_name:
                            salesController.billToCompany?.company_name ?? "",
                        onPressed: () {
                          salesController.billToCompany = null;
                          salesController.update();
                        }),
                salesController.shippedFromCompany == null
                    ? SelectCompany(
                        title: "Shipped  From",
                      )
                    : SelectedCompany(
                        title: "Shipped  From",
                        company_name:
                            salesController.shippedFromCompany?.company_name ??
                                "",
                        onPressed: () {
                          salesController.shippedFromCompany = null;
                          salesController.update();
                        }),
                salesController.shippedToCompany == null
                    ? SelectCompany(
                        title: "Shipped  To",
                      )
                    : SelectedCompany(
                        title: "Shipped  To",
                        company_name:
                            salesController.shippedToCompany?.company_name ??
                                "",
                        onPressed: () {
                          salesController.shippedToCompany = null;
                          salesController.update();
                        }),
                CommonTextField(
                  //  controller: ,
                  labelText: 'Purchase Order ID',
                ).paddingSymmetric(vertical: 8),
                EnterProduct(
                  index: 1,
                ).paddingSymmetric(vertical: 12),
                EnterProduct(
                  index: 2,
                ).paddingSymmetric(vertical: 12),
                EnterProduct(
                  index: 3,
                ).paddingSymmetric(vertical: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/icons/fabBlue.png",
                        height: 42,
                      ),
                    ),
                  ],
                )
              ],
            ).paddingAll(12),
          );
        }),
      ),
    );
  }
}

class SelectedCompany extends StatelessWidget {
  SelectedCompany(
      {super.key,
      required this.title,
      required this.company_name,
      required this.onPressed});
  String title;
  String company_name;
  void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFFAF9FF),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0x195A57FF)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xFFACACAC),
                  fontSize: 10,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(company_name,
                  style: const TextStyle(
                    color: Color(0xFF353535),
                    fontSize: 18,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
          IconButton(
              onPressed: onPressed,
              icon: Container(
                width: 64,
                height: 33,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                decoration: ShapeDecoration(
                  color: const Color(0xFFFFD2D5),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x33E23744)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Image.asset("assets/icons/Trash (R) FIlled.png"),
              ))
        ],
      ).paddingSymmetric(horizontal: 12, vertical: 22),
    ).paddingSymmetric(vertical: 4);
  }
}

class SelectCompany extends StatefulWidget {
  SelectCompany({super.key, required this.title, this.onCompanySelect});
  String title;
  void Function(Company)? onCompanySelect;
  @override
  State<SelectCompany> createState() => _SelectCompanyState();
}

class _SelectCompanyState extends State<SelectCompany> {
  final deb = Debouncing<void>(duration: const Duration(milliseconds: 200));

  List<Company>? callFromList;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFFAF9FF),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0x195A57FF)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              color: Color(0xFFACACAC),
              fontSize: 16,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              //height: 0,
            ),
          ),
          const Gap(8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                //  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonTextField(
                    suffixIcon: Image.asset("assets/icons/search-normal.png")
                        .paddingAll(8),
                    onChanged: (p0) {
                      deb.debounce(() {
                        Get.find<SalesController>()
                            .searchComapny(p0)
                            .then((value) {
                          setState(() {
                            callFromList = value;
                          });
                        });
                      });
                    },
                    containerColor: Colors.white,
                  ),
                  if (callFromList != null)
                    Column(
                      children: List.generate(
                          callFromList!.length,
                          (index) => InkWell(
                                onTap: () {
                                  Get.find<SalesController>().selectCompany(
                                      check: widget.title,
                                      selectedCompany: callFromList![index]);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                      left: BorderSide(
                                          width: 1, color: Color(0x195E57FC)),
                                      top: BorderSide(
                                          width: 1, color: Color(0x195E57FC)),
                                      right: BorderSide(
                                          width: 1, color: Color(0x195E57FC)),
                                      bottom:
                                          BorderSide(color: Color(0x195E57FC)),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      const Gap(12),
                                      Text(
                                        callFromList![index].company_name ?? '',
                                        style: const TextStyle(
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ).paddingSymmetric(vertical: 0)),
                    ).paddingOnly(top: 5)
                ],
              )),
              const Gap(12),
              InkWell(
                onTap: () {
                  Get.dialog(
                      AlertDialog(
                          contentPadding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          content: TagContainer(
                            title: "Add Company",
                            child:
                                SizedBox(width: 500, child: AddCompanyDialog()),
                          )),
                      barrierDismissible: false);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 47,
                  height: 40,
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
                ),
              ).paddingOnly(top: 8),
            ],
          ),
        ],
      ).paddingSymmetric(horizontal: 12, vertical: 12),
    ).paddingSymmetric(vertical: 12);
  }
}
