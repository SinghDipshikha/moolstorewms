import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:moolwmsstore/Sales/View/common/widgets/commonTextField.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/View/common/tagContainer.dart';
import 'package:number_text_input_formatter/number_text_input_formatter.dart';
// import 'package:number_text_input_formatter/number_text_input_formatter.dart';

class EnterProductView extends StatefulWidget {
  int index;
  EnterProductView({super.key, required this.index});

  @override
  State<EnterProductView> createState() => _EnterProductViewState();
}

class _EnterProductViewState extends State<EnterProductView> {
  // TextEditingController productname = TextEditingController();
  // TextEditingController productnumber = TextEditingController();
  // TextEditingController hsn = TextEditingController();
  // TextEditingController mrp = TextEditingController();
  // TextEditingController margin = TextEditingController();
  // TextEditingController description = TextEditingController();
  // TextEditingController quantity = TextEditingController();
  // TextEditingController unit = TextEditingController();
  // TextEditingController uom = TextEditingController();
  // TextEditingController gstrRate = TextEditingController();
  // TextEditingController totalTax = TextEditingController();
  DateTime? picked;
  DateFormat formatter = DateFormat('yyyy-MM-dd');
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SalesController>(builder: (salesController) {
      return TagContainer(
          topRightWidget: widget.index > 0
              ? InkWell(
                  onTap: () {
                    salesController.ticketProducts.removeAt(widget.index);
                    salesController.update();
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 10),
                    // alignment: Alignment.center,
                    height: 54,
                    width: 80,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFFFD2D5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    child: Image.asset(
                      "assets/icons/Trash (R) FIlled.png",
                      height: 10,
                    ).paddingOnly(bottom: 20),
                  ),
                )
              : null,
          title: "Product ${widget.index + 1} Details",
          child: Column(
            children: [
              CommonTextField(
                onChanged: (p0) {
                  salesController.ticketProducts[widget.index] = salesController
                      .ticketProducts[widget.index]
                      .copyWith(product_name: p0);
                },
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    {
                      return 'required';
                    }
                  } else {
                    return null;
                  }
                },
                //  controller: productname,
                textCapitalization: TextCapitalization.words,
                containerColor: Colors.white,
                hintText: 'Enter full name',
                labelText: 'Product Name',
              ).paddingSymmetric(vertical: 8),
              CommonTextField(
                onChanged: (p0) {
                  salesController.ticketProducts[widget.index] = salesController
                      .ticketProducts[widget.index]
                      .copyWith(product_no: p0);
                },
                //  controller: productnumber,
                containerColor: Colors.white,
                //  controller: ,
                labelText: 'Product Number',
              ).paddingSymmetric(vertical: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CommonTextField(
                      onChanged: (p0) {
                        salesController.ticketProducts[widget.index] =
                            salesController.ticketProducts[widget.index]
                                .copyWith(hsn_number: p0);
                      },
                      //    controller: hsn,
                      containerColor: Colors.white,
                      //  controller: ,
                      labelText: 'HSN Number',
                    ).paddingSymmetric(vertical: 8),
                  ),
                  const Gap(10),
                  Expanded(
                    child: Column(
                      children: [
                        const Gap(
                          8,
                        ),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Expiry Date",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFACACAC),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(
                          8,
                        ),
                        InkWell(
                          onTap: () async {
                            await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2101),
                            ).then((value) {
                              setState(() {
                                picked = value;
                                salesController.ticketProducts[widget.index] =
                                    salesController.ticketProducts[widget.index]
                                        .copyWith(expiry_date: picked);
                              });
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 169, 153, 246),
                                    width: 0.2),
                                color: Colors.white,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: picked != null
                                ? Text(formatter.format(picked!))
                                : Image.asset("assets/icons/calendar.png")
                                    .paddingAll(6),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CommonTextField(
                      onChanged: (p0) {
                        salesController.ticketProducts[widget.index] =
                            salesController.ticketProducts[widget.index]
                                .copyWith(
                                    mrp: double.parse(p0.replaceAll(",", "")));
                      },
                      //   controller: mrp,
                      inputFormatters: [
                        NumberTextInputFormatter(
                          integerDigits: 10,
                          decimalDigits: 2,
                          maxValue: '1000000000.00',
                          decimalSeparator: '.',
                          groupDigits: 3,
                          groupSeparator: ',',
                          allowNegative: false,
                          overrideDecimalPoint: true,
                          insertDecimalPoint: false,
                          insertDecimalDigits: true,
                        ),
                      ],
                      keyboardType: TextInputType.number,
                      containerColor: Colors.white,
                      //  controller: ,
                      labelText: 'MRP',
                    ).paddingSymmetric(vertical: 8),
                  ),
                  const Gap(10),
                  Expanded(
                    child: CommonTextField(
                      onChanged: (p0) {
                        salesController.ticketProducts[widget.index] =
                            salesController.ticketProducts[widget.index]
                                .copyWith(margin: int.parse(p0));
                      },
                      //  controller: margin,
                      suffixIcon: const Icon(
                        Icons.percent,
                        color: Colors.black26,
                      ),
                      inputFormatters: [PercentageTextInputFormatter()],
                      keyboardType: TextInputType.number,
                      containerColor: Colors.white,
                      //  controller: ,
                      labelText: 'Margin',
                    ).paddingSymmetric(vertical: 8),
                  ),
                ],
              ),
              CommonTextField(
                onChanged: (p0) {
                  salesController.ticketProducts[widget.index] = salesController
                      .ticketProducts[widget.index]
                      .copyWith(description: p0);
                },
                //  controller: description,
                containerColor: Colors.white,
                //  controller: ,
                labelText: 'Description',
              ).paddingSymmetric(vertical: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CommonTextField(
                      onChanged: (p0) {
                        salesController.ticketProducts[widget.index] =
                            salesController.ticketProducts[widget.index]
                                .copyWith(qty: int.parse(p0));
                      },
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          {
                            return 'required';
                          }
                        } else {
                          return null;
                        }
                      },
                      //  controller: quantity,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        FilteringTextInputFormatter.digitsOnly
                      ],

                      containerColor: Colors.white,
                      //  controller: ,
                      labelText: 'Quantity',
                    ).paddingSymmetric(vertical: 8),
                  ),
                  const Gap(10),
                  Expanded(
                    child: CommonTextField(
                      onChanged: (p0) {
                        salesController.ticketProducts[widget.index] =
                            salesController.ticketProducts[widget.index]
                                .copyWith(unit: int.parse(p0));
                      },
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          {
                            return 'required';
                          }
                        } else {
                          return null;
                        }
                      },
                      //  controller: unit,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      containerColor: Colors.white,
                      //  controller: ,
                      labelText: 'Unit',
                    ).paddingSymmetric(vertical: 8),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CommonTextField(
                      onChanged: (p0) {
                        salesController.ticketProducts[widget.index] =
                            salesController.ticketProducts[widget.index]
                                .copyWith(uom: p0);
                      },
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          {
                            return 'required';
                          }
                        } else {
                          return null;
                        }
                      },
                      //   controller: uom,
                      containerColor: Colors.white,
                      //  controller: ,
                      labelText: 'UOM',
                    ).paddingSymmetric(vertical: 8),
                  ),
                  const Gap(10),
                  Expanded(
                    child: CommonTextField(
                      onChanged: (p0) {
                        salesController.ticketProducts[widget.index] =
                            salesController.ticketProducts[widget.index]
                                .copyWith(gst_rate: int.parse(p0));
                      },
                      //  controller: gstrRate,
                      suffixIcon: const Icon(
                        Icons.percent,
                        color: Colors.black26,
                      ),
                      inputFormatters: [PercentageTextInputFormatter()],
                      keyboardType: TextInputType.number,
                      containerColor: Colors.white,
                      //  controller: ,
                      labelText: 'GST Rate',
                    ).paddingSymmetric(vertical: 8),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CommonTextField(
                      onChanged: (p0) {
                        salesController.ticketProducts[widget.index] =
                            salesController.ticketProducts[widget.index]
                                .copyWith(total_tax: int.parse(p0));
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      containerColor: Colors.white,
                      //  controller: ,
                      labelText: 'Total Tax',
                    ).paddingSymmetric(vertical: 8),
                  ),
                  const Gap(10),
                  Expanded(
                    child: CommonTextField(
                      onChanged: (p0) {
                        salesController.ticketProducts[widget.index] =
                            salesController.ticketProducts[widget.index]
                                .copyWith(total_tax: int.parse(p0));
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      containerColor: Colors.white,
                      //  controller: ,
                      labelText: 'TOTAL',
                    ).paddingSymmetric(vertical: 8),
                  ),
                ],
              ),
            ],
          ).paddingSymmetric(vertical: 12, horizontal: 12));
    });
  }
}
