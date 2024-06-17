import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:moolwmsstore/Sales/Model/Customer/customerListElement.dart';
import 'package:moolwmsstore/Sales/View/common/widgets/customButton.dart';
import 'package:moolwmsstore/Sales/View/customer/addCustomerScreen.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:moolwmsstore/utils/globals.dart';

class CustomerList extends StatefulWidget {
  const CustomerList({super.key});

  @override
  State<CustomerList> createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {
  final PagingController<int, CustomerListElement> pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    pagingController.addPageRequestListener((pageKey) {
      Get.find<SalesController>()
          .salesRepo
          .getCustomers(recordsPerPage: 20, page: pageKey)
          .then((v) {
        if (v != null) {
          final isLastPage = v.length < 20;
          if (isLastPage) {
            pagingController.appendLastPage(v);
          } else {
            final nextPageKey = pageKey + 1;
            pagingController.appendPage(v, nextPageKey);
          }
        }
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xFF232323),
        title: const Text('Cutsomer List', style: TextStyles.appBarTextStyle),
      ),
      body: GetBuilder<SalesController>(
              initState: (state) {},
              builder: (salesController) {
                if (salesController.loading == true) {
                  return const Center(
                    child: SpinKitDoubleBounce(
                      color: Color(0xFF5A57FF),
                    ),
                  );
                }
                return Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Text(
                              "Customer Name",
                              style: TextStyles.talbleHeadingTitleStyle,
                            )),
                        Expanded(
                            flex: 1,
                            child: Text(
                              "Phone No.",
                              style: TextStyles.talbleHeadingTitleStyle,
                            )),
                        Expanded(
                            flex: 1,
                            child: Text(
                              "Comapny Name",
                              style: TextStyles.talbleHeadingTitleStyle,
                            )),

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
                    ).paddingSymmetric(horizontal: 8),
                    Expanded(
                        child: PagedListView<int, CustomerListElement>(
                      pagingController: pagingController,
                      builderDelegate:
                          PagedChildBuilderDelegate<CustomerListElement>(
                              itemBuilder: (context, item, index) {
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
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      // Get.to(const CompanyDetail(),
                                      //     id: salesNavigationKey);
                                    },
                                    child: Text(
                                        ((item.first_name ?? "") +
                                            (item.last_name ?? "")),
                                        style:
                                            TextStyles.talbleContentTextStyle),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      // Get.to(const CompanyDetail(),
                                      //     id: salesNavigationKey);
                                    },
                                    child: Text("${item.phone}",
                                        style:
                                            TextStyles.talbleContentTextStyle),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      // Get.to(const CompanyDetail(),
                                      //     id: salesNavigationKey);
                                    },
                                    child: Text("${item.company_name}",
                                        style:
                                            TextStyles.talbleContentTextStyle),
                                  )),
                              IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    // Get.to(
                                    //     CompanyDetail(
                                    //       company:
                                    //           salesController.comapnies[i],
                                    //     ),
                                    //     id: salesNavigationKey);
                                  },
                                  icon: const Icon(
                                    Icons.visibility,
                                    color: Colors.black,
                                  )),
                            ],
                          ),
                        ).paddingSymmetric(vertical: 4, horizontal: 0);
                      }),
                    )),
                    CustomButton(
                      onTap: () {
                        Get.off(AddCustomerScreen(), id: salesNavigationKey);
                      },
                      title: 'Add Customer',
                    ).paddingSymmetric(horizontal: 12, vertical: 12)
                  ],
                );
              })
          .paddingSymmetric(
              vertical: Dimensions.vericalBodyPad,
              horizontal: Dimensions.horizontalBodyPad),
    );
  }
}
