import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:moolwmsstore/View/common/customButton.dart';
import 'package:moolwmsstore/View/common/myTextField.dart';

//@RoutePage()
class CreatePo extends StatefulWidget {
  const CreatePo({
    super.key,
  });

  @override
  State<CreatePo> createState() => _CreatePoState();
}

class _CreatePoState extends State<CreatePo> {
  int productCount = 1;
  List<Map> productFields = [
    {"title": "Product Name"},
    {"title": "Product Number"},
    {"title": "HSN Number"},
    {"title": "MRP"},
    {"title": "Margin"},
    {"title": "Expiry Date", "type": "DATE"},
    {"title": "Order QTY"},
    {"title": "Unit"},
    {"title": "UOM"},
    {"title": "GST Rate"},
    {"title": "Total Tax"},
    {"title": "Total Amount"},
    {"title": "Description"},
  ];
  List<Map> additionalFields = [
    {"title": "Vehicle Type"},
    {"title": "Vehicle No."},
    {"title": "Person’s Identity"},
    {"title": "Person’s Name"},
    {"title": "Identity Type"},
    {"title": "Driver’s Name"},
    {"title": "Description"},
  ];
  final DateFormat formatter = DateFormat.yMMMMd();
  final double verticalPad = 20;
  var date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: false,
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.vertical(
        //     bottom: Radius.circular(34),
        //   ),
        // ),
        backgroundColor: Colors.black,
        title: const Text(
          'Create Purchase Order',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(context.isPhone ? 12 : 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(context.isPhone ? 0 : 40),
                decoration: context.isPhone
                    ? null
                    : ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(20),
                    SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        runSpacing: 60,
                        // spacing: 80,
                        children: [
                          Container(
                              constraints: const BoxConstraints(maxWidth: 700),
                              child: const ComapanyDetails()),
                          Container(
                              constraints: const BoxConstraints(maxWidth: 700),
                              child: const ComapanyDetails()),
                          Container(
                              constraints: const BoxConstraints(maxWidth: 700),
                              child: const ComapanyDetails()),
                          Container(
                              constraints: const BoxConstraints(maxWidth: 700),
                              child: const ComapanyDetails()),
                        ],
                      ),
                    ),
                    const Gap(40),
                    Wrap(
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runSpacing: 10,
                      spacing: 40,
                      children: [
                        Container(
                            constraints: const BoxConstraints(maxWidth: 600),
                            child: Row(
                              children: [
                                const Text(
                                  'Purchase Order',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const Gap(10),
                                Flexible(
                                  child: MyTextField(
                                    labelText: "#14141234",
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            constraints: const BoxConstraints(maxWidth: 600),
                            child: Row(
                              children: [
                                const Text(
                                  'Account Number',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const Gap(10),
                                Flexible(
                                  child: MyTextField(
                                    labelText: "14141234",
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            constraints: const BoxConstraints(maxWidth: 600),
                            child: Row(
                              children: [
                                const Text(
                                  'Vendor ID',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const Gap(10),
                                Flexible(
                                  child: MyTextField(
                                    labelText: "V-2345345",
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                    Gap(verticalPad),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(productCount, (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(20),
                                width: double.infinity,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment(1.00, 0.00),
                                    end: Alignment(-1, 0),
                                    colors: [
                                      Color(0xFFF1F1F1),
                                      Color(0xFFECECEC)
                                    ],
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      blurRadius: 3,
                                      offset: Offset(0, 2),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Center(
                                      child: Text(
                                        'Product One',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    const Gap(20),
                                    Wrap(
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      runSpacing: 20,
                                      spacing: 80,
                                      children: List.generate(
                                          productFields.length, (index) {
                                        return Container(
                                            // padding: const EdgeInsets.only(right: 20),
                                            constraints: BoxConstraints(
                                                maxWidth: productFields[index]
                                                            ["title"] ==
                                                        "Description"
                                                    ? (300 * 3) + 80
                                                    : 300),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 100,
                                                  child: Text(
                                                    "${productFields[index]["title"]}",
                                                    style: const TextStyle(
                                                      color: Color(0xFF595959),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                    textAlign: TextAlign.start,
                                                  ),
                                                ),
                                                const Gap(5),
                                                Flexible(
                                                  child: productFields[index]
                                                              ["type"] ==
                                                          "DATE"
                                                      ? InkWell(
                                                          onTap: () async {
                                                            await showCalendarDatePicker2Dialog(
                                                              context: context,
                                                              config:
                                                                  CalendarDatePicker2WithActionButtonsConfig(),
                                                              dialogSize:
                                                                  const Size(
                                                                      325, 400),
                                                              value: [],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15),
                                                            ).then((value) {
                                                              setState(() {
                                                                date = value;
                                                              });
                                                            });
                                                          },
                                                          child: Container(
                                                            height: 50,
                                                            decoration:
                                                                ShapeDecoration(
                                                              color:
                                                                  Colors.white,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4.82),
                                                              ),
                                                              shadows: const [
                                                                BoxShadow(
                                                                  color: Color(
                                                                      0x0C000000),
                                                                  blurRadius: 4,
                                                                  offset:
                                                                      Offset(
                                                                          3, 4),
                                                                  spreadRadius:
                                                                      0,
                                                                )
                                                              ],
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Expanded(
                                                                    child:
                                                                        Container(
                                                                  child: date !=
                                                                          null
                                                                      ? Text(
                                                                          formatter
                                                                              .format(date[0]),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                        )
                                                                      : Container(),
                                                                )),
                                                                Image.asset(
                                                                  "assets/icons/Calender Icon.png",
                                                                  height: 22,
                                                                ).paddingSymmetric(
                                                                    horizontal:
                                                                        10),
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      : MyTextField(

                                                          // prefixIcon: Row(
                                                          //   mainAxisSize: MainAxisSize.min,
                                                          //   children: [

                                                          //   ],
                                                          // ),
                                                          //   labelText: "V-2345345",
                                                          ),
                                                ),
                                              ],
                                            ));
                                      }),
                                    )
                                  ],
                                ),
                              ),
                              index != 0
                                  ? IconButton(
                                      onPressed: () {
                                        setState(() {
                                          productCount--;
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.cancel_rounded,
                                        size: 40,
                                      ))
                                  : Container()
                            ],
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.start,
                runSpacing: 20,
                spacing: 60,
                children: List.generate(additionalFields.length, (index) {
                  return Container(
                    constraints: BoxConstraints(
                        maxWidth:
                            additionalFields[index]['title'] == "Description"
                                ? double.infinity
                                : 400),
                    child: MyTextField(
                      maxLines:
                          additionalFields[index]['title'] == "Description"
                              ? 4
                              : null,
                      labelText:
                          additionalFields[index]['title'] == "Description"
                              ? "Description"
                              : null,
                      prefixIcon:
                          additionalFields[index]['title'] == "Description"
                              ? null
                              : Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "${additionalFields[index]['title']} : ",
                                      style: TextStyle(
                                        color: Theme.of(context).hintColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                    ),
                  );
                }),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton2(
                    onTap: () {
                      setState(() {
                        productCount++;
                      });
                    },
                    width: 200,
                    leftIcon: "assets/icons/Add Red2.png",
                    title: "Add Another Product",
                    leftIconheight: 22,
                  ),
                  CustomButton2(
                    rightIconheight: 20,
                    width: 200,
                    title: "Submit",
                    rightIcon: "assets/icons/submit.png",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ComapanyDetails extends StatelessWidget {
  const ComapanyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    const double verticalPad = 10;
    return Column(
      children: [
        MyTextField(
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/icons/Asset Form Icons.png",
                  height: 20,
                ),
              ),
              Text(
                "Call From : ",
                style: TextStyle(
                  color: Theme.of(context).hintColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        const Gap(verticalPad),
        MyTextField(
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/icons/Location Icon.png",
                    height: 22,
                    color: const Color(0xFFACACAC),
                  )),
              Text(
                "Address : ",
                style: TextStyle(
                  color: Theme.of(context).hintColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        const Gap(verticalPad),
        MyTextField(
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/icons/recipt.png",
                  height: 20,
                ),
              ),
              Text(
                'Gst In : ',
                style: TextStyle(
                  color: Theme.of(context).hintColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        const Gap(verticalPad),
        MyTextField(
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/icons/Field Icon Phone.png",
                  height: 20,
                ),
              ),
              Text(
                'Phone Number : ',
                style: TextStyle(
                  color: Theme.of(context).hintColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
