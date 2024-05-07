import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Sales/View/addCompany.dart';
import 'package:moolwmsstore/Sales/View/companyDetail.dart';
import 'package:moolwmsstore/Sales/View/widgets/customButton.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/utils/globals.dart';

class CompanyList extends StatelessWidget {
  const CompanyList({super.key});

  @override
  Widget build(BuildContext context) {
    final List tags = [
      {"title": "Company Name", "flex": 1},
      {"title": "Phone No.", "flex": 1},
      {"title": "Date & Time", "flex": 1},
      {"title": "In/Out", "flex": 1},
    ];

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomButton(
        onTap: () {
          Get.off(AddCompany(), id: salesNavigationKey);
        },
        title: 'Add Company',
      ).paddingSymmetric(horizontal: 12),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xFF232323),
        title: const Text(
          'Company List',
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
      body: GetBuilder<SalesController>(initState: (state) {
        Get.find<SalesController>().getCompanyList();
      }, builder: (salesController) {
        if (salesController.loading == true) {
          return const Center(
            child: SpinKitDoubleBounce(
              color: Color(0xFF5A57FF),
            ),
          );
        }
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: const Color(0xFF5A57FF).withOpacity(0.4)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/Filter (R).png',
                            height: 19,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            'Filter',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFA7A7A7),
                              fontSize: 16,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: -0.64,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Gap(20),
                    Container(
                      height: 40,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            width: 1,
                            color: const Color(0xFF5A57FF).withOpacity(0.4)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/search-normal.png',
                            height: 19,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            'Search',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFA7A7A7),
                              fontSize: 16,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: -0.64,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Gap(30),
                Row(
                  children: [
                    const Expanded(
                        flex: 1,
                        child: Text(
                          "Company Name",
                          style: TextStyle(
                            color: Color(0xFF5A57FF),
                            fontSize: 12,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 0,
                            letterSpacing: -0.48,
                          ),
                        )),
                    const Expanded(
                        flex: 1,
                        child: Text(
                          "Phone No.",
                          style: TextStyle(
                            color: Color(0xFF5A57FF),
                            fontSize: 12,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 0,
                            letterSpacing: -0.48,
                          ),
                        )),
                    const Expanded(
                        flex: 1,
                        child: Text(
                          "Date & Time",
                          style: TextStyle(
                            color: Color(0xFF5A57FF),
                            fontSize: 12,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 0,
                            letterSpacing: -0.48,
                          ),
                        )),
                    // IconButton(
                    //     padding: EdgeInsets.zero,
                    //     onPressed: () {},
                    //     icon: const Text(
                    //       "In/Out",
                    //       style: TextStyle(
                    //         color: Color(0xFF5A57FF),
                    //         fontSize: 12,
                    //         fontFamily: 'SF Pro Text',
                    //         fontWeight: FontWeight.w400,
                    //         height: 0,
                    //         letterSpacing: -0.48,
                    //       ),
                    //     )),
                    IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )),
                    // IconButton(
                    //     padding: EdgeInsets.zero,
                    //     onPressed: () {},
                    //     icon: const Icon(
                    //       Icons.more_horiz,
                    //       color: Colors.white,
                    //     ))
                  ],
                ).paddingSymmetric(horizontal: 20),
                Expanded(
                    child: ListView.builder(
                        itemCount: salesController.comapnies.length,
                        itemBuilder: (context, i) {
                          return Container(
                            height: 70,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFAF9FF),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0x195A57FF)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      onTap: () {
                                        // Get.to(const CompanyDetail(),
                                        //     id: salesNavigationKey);
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(
                                          salesController
                                                  .comapnies[i].company_name ??
                                              "",
                                          style: const TextStyle(
                                            color: Color(0xFF353535),
                                            fontSize: 12,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      onTap: () {
                                        // Get.to(const CompanyDetail(),
                                        //     id: salesNavigationKey);
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(
                                          salesController
                                                  .comapnies[i].phone_no ??
                                              "",
                                          style: const TextStyle(
                                            color: Color(0xFF353535),
                                            fontSize: 12,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      onTap: () {
                                        // Get.to(const CompanyDetail(),
                                        //     id: salesNavigationKey);
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(
                                          salesController
                                                  .comapnies[i].created_at
                                                  .toString() ??
                                              "",
                                          style: const TextStyle(
                                            color: Color(0xFF353535),
                                            fontSize: 12,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    )),
                                // IconButton(
                                //     padding: EdgeInsets.zero,
                                //     onPressed: () {},
                                //     icon: Image.asset(
                                //       "assets/icons/check_in.png",
                                //       height: 32,
                                //     )),
                                IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      Get.to( CompanyDetail(company:salesController
                                                  .comapnies[i] ,),
                                          id: salesNavigationKey);
                                    },
                                    icon: const Icon(
                                      Icons.visibility,
                                      color: Colors.black,
                                    )),
                                // IconButton(
                                //     padding: EdgeInsets.zero,
                                //     onPressed: () {},
                                //     icon: const Icon(
                                //       Icons.more_vert,
                                //       color: Colors.black,
                                //     )),
                              ],
                              // children: List.generate(tags.length, (index) {
                              //   if (tags[index]["title"] == "Info") {
                              //     return IconButton(
                              //         padding: EdgeInsets.zero,
                              //         onPressed: () {},
                              //         icon: Image.asset(
                              //           "assets/icons/Eye.png",
                              //           height: 22,
                              //         ));
                              //   }
                              //   if (tags[index]["title"] == "icon") {
                              //     return IconButton(
                              //         padding: EdgeInsets.zero,
                              //         onPressed: () {},
                              //         icon: const Icon(
                              //           Icons.more_horiz,
                              //           color: Colors.black,
                              //         ));
                              //   }
                              //   return Expanded(
                              //       flex: tags[index]["flex"],
                              //       child: GestureDetector(
                              //         onTap: () {
                              //           Get.to(const CompanyDetail(),
                              //               id: salesNavigationKey);
                              //         },
                              //         child: Padding(
                              //           padding:
                              //               const EdgeInsets.symmetric(horizontal: 8.0),
                              //           child: Text(
                              //             contents[index]["title"],
                              //             style: const TextStyle(
                              //               color: Color(0xFF353535),
                              //               fontSize: 12,
                              //               fontFamily: 'SF Pro Text',
                              //               fontWeight: FontWeight.w500,
                              //             ),
                              //           ),
                              //         ),
                              //       ));
                              // }),
                            ),
                          ).paddingSymmetric(vertical: 4, horizontal: 10);
                        })),
              ],
            ),
            Container(
              height: Get.height * 0.2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.white.withOpacity(0.3),
                    Colors.white,
                    Colors.white,
                  ])),
            ),
          ],
        );
      }),
    );
  }
}
