import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/myTextField.dart';

class CreatePo extends StatelessWidget {
  const CreatePo({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> productFields = [
      {"title": "Product Name"},
      {"title": "Product Number"},
      {"title": "HSN Number"},
      {"title": "MRP"},
      {"title": "Margin"},
      {"title": "Expiry Date"},
      {"title": "Order QTY"},
      {"title": "Unit"},
      {"title": "UOM"},
      {"title": "GST Rate"},
      {"title": "Total Tax"},
      {"title": "Total Amount"},
      {"title": "Description"},
    ];
    const double verticalPad = 20;
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
          padding: const EdgeInsets.all(14).copyWith(bottom: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.center,
                runSpacing: 40,
                spacing: 40,
                children: [
                  Container(
                      constraints: const BoxConstraints(maxWidth: 600),
                      child: const ComapanyDetails()),
                  Container(
                      constraints: const BoxConstraints(maxWidth: 600),
                      child: const ComapanyDetails()),
                  Container(
                      constraints: const BoxConstraints(maxWidth: 600),
                      child: const ComapanyDetails()),
                  Container(
                      constraints: const BoxConstraints(maxWidth: 600),
                      child: const ComapanyDetails()),
                ],
              ),
              const Gap(verticalPad),
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
              const Gap(verticalPad),
              Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(1.00, 0.00),
                    end: Alignment(-1, 0),
                    colors: [Color(0xFFF1F1F1), Color(0xFFECECEC)],
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Product One',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Gap(20),
                    Wrap(
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runSpacing: 40,
                      spacing: 40,
                      children: List.generate(productFields.length, (index) {
                        return Container(
                            // padding: const EdgeInsets.only(right: 20),
                            constraints: BoxConstraints(
                                maxWidth: productFields[index]["title"] ==
                                        "Description"
                                    ? (540 * 3) + 80
                                    : 540),
                            child: MyTextField(
                              prefixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "${productFields[index]["title"]} : ",
                                    style: const TextStyle(
                                      color: Color(0xFF595959),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              //   labelText: "V-2345345",
                            ));
                      }),
                    )
                  ],
                ),
              ),
              const Gap(40),
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
              const Text(
                "Call From : ",
                style: TextStyle(
                  color: Color(0xFF595959),
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
              const Text(
                "Address : ",
                style: TextStyle(
                  color: Color(0xFF595959),
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
              const Text(
                'Gst In :',
                style: TextStyle(
                  color: Color(0xFF595959),
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
              const Text(
                'Phone Number :',
                style: TextStyle(
                  color: Color(0xFF595959),
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
