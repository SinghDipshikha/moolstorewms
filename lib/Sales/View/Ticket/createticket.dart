import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Sales/Model/company.dart';
import 'package:moolwmsstore/Sales/Model/enterProduct.dart';
import 'package:moolwmsstore/Sales/View/Ticket/addCompanyDialog.dart';
import 'package:moolwmsstore/Sales/View/Ticket/enterProduct.dart';
import 'package:moolwmsstore/Sales/View/Ticket/ticketList.dart';
import 'package:moolwmsstore/Sales/View/common/widgets/salesCommonWidgets.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/tagContainer.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:moolwmsstore/utils/globals.dart';
import 'package:throttling/throttling.dart';
// import 'package:throttling/throttling.dart';

class Createticket extends StatefulWidget {
  const Createticket({super.key});

  @override
  State<Createticket> createState() => _CreateticketState();
}

class _CreateticketState extends State<Createticket> {
  TextEditingController poId = TextEditingController();
  bool creatingTicket = false;
  final _formKey = GlobalKey<FormState>();
  int selectedWarehouseId = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
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
      body: creatingTicket
          ? const Center(
              child: SpinKitDoubleBounce(
                color: Color(0xFF5A57FF),
              ),
            )
          : SingleChildScrollView(
              child: GetBuilder<SalesController>(builder: (salesController) {
                return Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CommonTextField(
                        controller: poId,
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
                        labelText: 'Purchase Order ID',
                      ).paddingSymmetric(vertical: 12),
                      salesController.callFromCompany == null
                          ? SelectCompany(
                              title: "Call From",
                            )
                          : SelectedCompany(
                              title: "Call From",
                              company_name: salesController
                                      .callFromCompany?.company_name ??
                                  "",
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
                                  salesController.billToCompany?.company_name ??
                                      "",
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
                              company_name: salesController
                                      .shippedFromCompany?.company_name ??
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
                              company_name: salesController
                                      .shippedToCompany?.company_name ??
                                  "",
                              onPressed: () {
                                salesController.shippedToCompany = null;
                                salesController.update();
                              }),
                      Column(
                        children: List.generate(
                            salesController.ticketProducts.length, (index) {
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
                      DropdownButtonFormField2<Map>(
                        decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 27, 23, 251),
                                  width: 0.4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 169, 153, 246),
                                  width: 0.2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          // Add Horizontal padding using menuItemStyleData.padding so it matches
                          // the menu padding when button's width is not specified.
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 0),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // Add more decoration..
                        ),
                        hint: const Text(
                          'Select Warehouse',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xFFACACAC),
                            fontSize: 12,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        items: salesController.user.warehouse?.map((item) {
                          return DropdownMenuItem<Map>(
                            value: item,
                            child: Row(
                              children: [
                                Text(
                                  "${item["warehouse_name"]}",
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const Gap(10),
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: item["color"],
                                      borderRadius: BorderRadius.circular(4)),
                                  height: 20,
                                  width: 20,
                                  child: Text("${item["centerTitle"]}",
                                      style:
                                          const TextStyle(color: Colors.white)),
                                )
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
                            selectedWarehouseId = value["id"];
                          }
                        },
                        onSaved: (value) {
                          // ownerController.selectedTempType = value;
                          // ownerController.update();
                        },
                        buttonStyleData: const ButtonStyleData(
                          //decoration: BoxDecoration(color: Colors.white),
                          overlayColor: WidgetStatePropertyAll(Colors.white),
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
                      CustomButton(
                        title: "Submit",
                        onTap: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            setState(() {
                              creatingTicket = true;
                            });
                            salesController
                                .createIndent(
                                    poId: poId.text,
                                    warehouseid: selectedWarehouseId)
                                .then((value) {
                              if (value) {
                                Get.off(TicketList(), id: salesNavigationKey);
                                Snacks.greenSnack(
                                    "Successfully Created Purchase Order and Ticket id is Assigned");
                              } else {
                                setState(() {
                                  creatingTicket = false;
                                });
                              }
                            });
                          } else {
                            Snacks.redSnack("Please fill required fields");
                          }
                        },
                      ).paddingSymmetric(vertical: 12)
                    ],
                  ).paddingSymmetric(
                      horizontal: Dimensions.horizontalBodyPad,
                      vertical: Dimensions.vericalBodyPad),
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
            mainAxisSize: MainAxisSize.min,
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
              )),
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
                //  crossAxisAlignment: CrossAxisAlignment.center,
                //  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonTextField(
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        {
                          return 'required';
                        }
                      } else {
                        return null;
                      }
                    },
                    suffixIcon: Image.asset(
                      "assets/icons/search-normal.png",
                      height: 6,
                    ).paddingAll(12),
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
                  height: 42,
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
              ).paddingOnly(top: 10),
            ],
          ),
        ],
      ).paddingSymmetric(horizontal: 12, vertical: 12),
    ).paddingSymmetric(vertical: 12);
  }
}
