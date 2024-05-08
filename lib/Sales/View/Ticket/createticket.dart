import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:moolwmsstore/Sales/View/Ticket/addCompanyDialog.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/View/common/myTextField.dart';
import 'package:moolwmsstore/View/common/tagContainer.dart';

class Createticket extends StatelessWidget {
  const Createticket({super.key});

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
        child: Column(
          children: [
            GetBuilder<SalesController>(
              builder: (salesController) {
                return Container(
                  height: 115,
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
                      const Text(
                        'Call From',
                        style: TextStyle(
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
                                  salesController.searchComapny(p0);
                                  
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
                                    child: SizedBox(
                                        width: 500, child: AddCompanyDialog()),
                                  )),barrierDismissible: false);
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
                          )
                        ],
                      )
                    ],
                  ).paddingSymmetric(horizontal: 12),
                );
              }
            )
          ],
        ).paddingAll(12),
      ),
    );
  }
}
