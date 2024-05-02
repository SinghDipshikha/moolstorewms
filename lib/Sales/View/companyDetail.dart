import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Sales/View/SalesDashboard.dart';
import 'package:moolwmsstore/Sales/View/widgets/customButton.dart';
import 'package:moolwmsstore/utils/globals.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CompanyDetail extends StatelessWidget {
  const CompanyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xFF232323),
        title: const Text(
          'View Company',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w500,
            height: 0,
            letterSpacing: -0.80,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomButton(
        onTap: () {
          Get.back();
          Get.off(const SalesDashboard(), id: salesNavigationKey);
        },
        colors: const [Color(0xFF5A57FF), Color(0xFF5A57FF)],
        title: 'Home',
      ).paddingSymmetric(horizontal: 12),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/icons/Rectangle 4805.png',
                fit: BoxFit.fill,
                width: double.infinity,
                height: Get.height * 0.16,
              ),
              Container(
                alignment: Alignment.topLeft,
                height: Get.height * 0.16,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          const Color(0xFF5A57FF),
                          const Color(0xFF5A57FF).withOpacity(0.6),
                          Colors.transparent,
                        ])),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PixelGenix',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w700,
                        height: 0,
                        letterSpacing: -0.80,
                      ),
                    ),
                    Text(
                      'Solutions',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: -0.80,
                      ),
                    )
                  ],
                ).paddingAll(
                  20,
                ),
              ),
            ],
          ),
          const Gap(30),
          _detailBox(
              title1: 'Company',
              value1: 'PixelGenix Solutions',
              title2: 'Phone',
              value2: '555 234 5678'),
          const Gap(30),
          Stack(
            children: [
              Image.asset(
                'assets/icons/Group 1000010643.png',
                fit: BoxFit.fill,
                width: double.infinity,
                height: Get.height * 0.1,
              ),
              SizedBox(
                height: Get.height * 0.1,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/icons/PO Icon Set 1 (R).png',
                      height: 20,
                      color: Colors.white,
                    ).paddingOnly(left: 20),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: '167 Elm Street, ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w700,
                              height: 0,
                              letterSpacing: -0.80,
                            ),
                          ),
                          TextSpan(
                            text: ' Springdale',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: -0.80,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ).paddingOnly(top: 20, left: 20),
              ),
            ],
          ),
          const Gap(30),
          _detailBox(
              title1: 'State',
              value1: 'Wisconsin',
              title2: 'GST Number',
              value2: 'ABCD-X-0099'),
        ],
      ).paddingSymmetric(horizontal: 24, vertical: 20),
    );
  }

  _detailBox(
      {required String title1,
      required String value1,
      required String title2,
      required String value2}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title1,
                style: const TextStyle(
                  color: Color(0xFFACACAC),
                  fontSize: 12,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: -0.80,
                ),
              ),
              Text(
                value1,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: -0.80,
                ),
              )
            ],
          ),
        ),
        Flexible(
            flex: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title2,
                  style: const TextStyle(
                    color: Color(0xFFACACAC),
                    fontSize: 12,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 0,
                    letterSpacing: -0.80,
                  ),
                ),
                Text(
                  value2,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 0,
                    letterSpacing: -0.80,
                  ),
                )
              ],
            )),
      ],
    );
  }
}
