import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Sales/Model/company.dart';
import 'package:moolwmsstore/Sales/View/Ticket/addCompanyDialog.dart';
import 'package:moolwmsstore/Sales/View/common/commonTextField.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/View/common/myTextField.dart';
import 'package:moolwmsstore/View/common/tagContainer.dart';
import 'package:throttling/throttling.dart';

class Createticket extends StatefulWidget {
  const Createticket({super.key});

  @override
  State<Createticket> createState() => _CreateticketState();
}

class _CreateticketState extends State<Createticket> {
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
          return Column(
            children: [
              salesController.callFromCompany == null
                  ? SelectCompany(
                      title: "Call From",
                    )
                  : Container(
                      height: 40,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF5A57FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            salesController.callFromCompany?.company_name ?? "",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                salesController.callFromCompany = null;
                                salesController.update();
                              },
                              icon: const Icon(Icons.delete))
                        ],
                      ),
                    ),
              salesController.billToCompany == null
                  ? SelectCompany(
                      title: "Bill To",
                    )
                  : Container(
                      height: 40,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF5A57FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            salesController.billToCompany?.company_name ?? "",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                salesController.billToCompany = null;
                                salesController.update();
                              },
                              icon: const Icon(Icons.delete))
                        ],
                      ),
                    ),
              salesController.shippedFromCompany == null
                  ? SelectCompany(
                      title: "Shipped  From",
                    )
                  : Container(
                      height: 40,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF5A57FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            salesController.shippedFromCompany?.company_name ??
                                "",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                salesController.shippedFromCompany = null;
                                salesController.update();
                              },
                              icon: const Icon(Icons.delete))
                        ],
                      ),
                    ),
              salesController.shippedToCompany == null
                  ? SelectCompany(
                      title: "Shipped  To",
                    )
                  : Container(
                      height: 40,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF5A57FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            salesController.shippedToCompany?.company_name ??
                                "",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                salesController.shippedToCompany = null;
                                salesController.update();
                              },
                              icon: const Icon(Icons.delete))
                        ],
                      ),
                    ),
              // GetBuilder<SalesController>(builder: (salesController) {
              //   return ;
              // })
              CommonTextField(
                //  controller: ,
                labelText: 'Purchase Order ID',
              ).paddingSymmetric(vertical: 8),
              TagContainer(title: "Product Details", child: Column(
                children: [],
              ))
            ],
          ).paddingAll(12);
        }),
      ),
    );
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
            children: [
              Expanded(
                  child: MyTextField(
                onChanged: (p0) {
                  deb.debounce(() {
                    Get.find<SalesController>().searchComapny(p0).then((value) {
                      setState(() {
                        callFromList = value;
                      });
                    });
                  });
                },
                containercolor: Colors.white,
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
                  height: 36,
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
              ),
            ],
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
                          color: Colors.white,
                          child: Row(
                            children: [
                              const Gap(12),
                              Text(
                                callFromList![index].company_name ?? '',
                                style: const TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ).paddingSymmetric(vertical: 4)),
            )
        ],
      ).paddingSymmetric(horizontal: 12, vertical: 12),
    ).paddingSymmetric(vertical: 12);
  }
}
