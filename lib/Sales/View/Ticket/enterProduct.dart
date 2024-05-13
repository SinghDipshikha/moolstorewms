import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:moolwmsstore/Sales/View/common/commonTextField.dart';
import 'package:moolwmsstore/View/common/tagContainer.dart';
import 'package:number_text_input_formatter/number_text_input_formatter.dart';
// import 'package:number_text_input_formatter/number_text_input_formatter.dart';

class EnterProduct extends StatefulWidget {

  int index;
  EnterProduct({super.key, required this.index});

  @override
  State<EnterProduct> createState() => _EnterProductState();
}

class _EnterProductState extends State<EnterProduct> {
    TextEditingController productname = TextEditingController();
  TextEditingController productnumber = TextEditingController();
  TextEditingController hsn = TextEditingController();
  TextEditingController mrp = TextEditingController();
  TextEditingController margin = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController quantity = TextEditingController();
  TextEditingController unit = TextEditingController();
  TextEditingController uom = TextEditingController();
  TextEditingController gstrRate = TextEditingController();
  TextEditingController totalTax = TextEditingController();
  DateTime? picked;
  DateFormat formatter = DateFormat('yyyy-MM-dd');
 final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return TagContainer(
        title: "Product ${widget.index} Details",
        child: Column(
          children: [
            CommonTextField(
              validator: (val) { if (val == null || val.isEmpty) {{return 'required'; }} else {  return null;}},
              controller: productname,
              textCapitalization: TextCapitalization.words,
              containerColor: Colors.white,
              hintText: 'Enter full name',
              labelText: 'Product Name',
            ).paddingSymmetric(vertical: 8),
            CommonTextField(
              controller: productnumber,
              containerColor: Colors.white,
              //  controller: ,
              labelText: 'Product Number',
            ).paddingSymmetric(vertical: 8),
            Row(
              children: [
                Expanded(
                  child: CommonTextField(
                    controller: hsn,
                    containerColor: Colors.white,
                    //  controller: ,
                    labelText: 'HSN Number',
                  ).paddingSymmetric(vertical: 8),
                ),
                const Gap(10),
                Expanded(
                  child: Column(
                    children: [
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
                            });
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 40.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 169, 153, 246),
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
              children: [
                Expanded(
                  child: CommonTextField(
                  
                    controller: mrp,
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
                    controller: margin,
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
              controller: description,
              containerColor: Colors.white,
              //  controller: ,
              labelText: 'Description',
            ).paddingSymmetric(vertical: 8),
            Row(
              children: [
                Expanded(
                  child: CommonTextField(
                    controller: quantity,
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
                     validator: (val) { if (val == null || val.isEmpty) {{return 'required'; }} else {  return null;}},
                    controller: unit,
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
              children: [
                Expanded(
                  child: CommonTextField(
                     validator: (val) { if (val == null || val.isEmpty) {{return 'required'; }} else {  return null;}},
                    controller: uom,
                    containerColor: Colors.white,
                    //  controller: ,
                    labelText: 'UOM',
                  ).paddingSymmetric(vertical: 8),
                ),
                const Gap(10),
                Expanded(
                  child: CommonTextField(
                    controller: gstrRate,
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
              children: [
                Expanded(
                  child: CommonTextField(
        
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
  }
}
