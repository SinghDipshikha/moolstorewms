import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
import 'package:moolwmsstore/Owner/View/addWarehouse.dart';
import 'package:moolwmsstore/Owner/View/viewWarehouseDetails.dart';
import 'package:moolwmsstore/utils/globals.dart';
//import 'package:moolwmsstore/routes/approutes.gr.dart';

////@RoutePage()
class WarehouseList extends StatelessWidget {
  const WarehouseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<OwnerController>(initState: (state) {
        Get.find<OwnerController>().getAllWarhouse();
      }, builder: (ownerController) {
        if (ownerController.loading) {
          return const Center(
            child: SpinKitDoubleBounce(
              color: Color(0xFF5A57FF),
            ),
          );
        }
        if (ownerController.warehouses.isEmpty &&
            ownerController.loading == false) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'No Warehouse has been created yet.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    //  height: 0,
                  ),
                ),
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white)),
                    onPressed: () {
                      Get.to(const AddWarehouse(), id: ownerNavigationKey);
                    },
                    child: const Text(
                      'Add Warehouse',
                      style: TextStyle(
                        color: Color(0xFF5A57FF),
                        fontSize: 12,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        //  height: 0,
                      ),
                    )).paddingAll(8)
              ],
            ),
          );
        }
        return Column(
          children: [
            TextField(
              onChanged: (value) {
                Get.find<OwnerController>().searchWarehouseList(value);
              },
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              onSubmitted: (value) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                  labelText: "Search",
                  labelStyle: const TextStyle(
                    color: Color(0xFFACACAC),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                  ),
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Image.asset(
                    "assets/icons/Search Icon.png",
                    height: 8,
                    color: const Color(0xFFACACAC),
                  ).paddingAll(12),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF5A57FF)),
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFACACAC)),
                      borderRadius: BorderRadius.all(Radius.circular(18)))),
            ),
            Row(
              children: [
                const Expanded(
                  flex: 3,
                  child: Text(
                    'Warehouse Name',
                    style: TextStyle(
                      color: Color(0xFF5A57FF),
                      fontSize: 12,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      //  height: 0,
                    ),
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: Text(
                    'Manager',
                    style: TextStyle(
                      color: Color(0xFF5A57FF),
                      fontSize: 12,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      //  height: 0,
                    ),
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Text(
                    'Capacity',
                    style: TextStyle(
                      color: Color(0xFF5A57FF),
                      fontSize: 12,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      //  height: 0,
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Container())
              ],
            ).paddingSymmetric(horizontal: 12),
            Expanded(
                child: GetBuilder<OwnerController>(initState: (state) {
              // state.initState();
            }, builder: (ownerController) {
              if (ownerController.searchWarehouses.isNotEmpty) {
                return ListView.builder(
                    itemCount: ownerController.searchWarehouses.length,
                    itemBuilder: (context, i) {
                      return Container(
                        width: double.infinity,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFAF9FF),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0x195A57FF)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Text(
                                ownerController
                                        .searchWarehouses[i].warehouse_name ??
                                    '',
                                style: const TextStyle(
                                  color: Color(0xFF353535),
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                ownerController.searchWarehouses[i]
                                        .warehouse_manager ??
                                    '',
                                style: const TextStyle(
                                  color: Color(0xFF353535),
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "${ownerController.searchWarehouses[i].total_capacity ?? ''} SQ.FT",
                                style: const TextStyle(
                                  color: Color(0xFFACACAC),
                                  fontSize: 10,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  Get.to(
                                      ViewWarehouseDetails(
                                        warehouse:
                                            ownerController.searchWarehouses[i],
                                      ),
                                      id: ownerNavigationKey);
                                },
                                icon: Image.asset(
                                  "assets/icons/Menu 3 Dots (R).png",
                                  height: 22,
                                ))
                          ],
                        ).paddingSymmetric(horizontal: 12),
                      ).paddingOnly(bottom: 10);
                    });
              }

              if (ownerController.searchWarehouses.isEmpty) {
                return const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'No Warehouse exists with this name',
                        style: TextStyle(
                          color: Color(0xFF5A57FF),
                          fontSize: 12,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          //  height: 0,
                        ),
                      ),
                    ],
                  ),
                );
              }
              return Center(
                child: Container(
                  color: const Color(0xFF5A57FF),
                ),
              );
            }))
          ],
        ).paddingSymmetric(vertical: 12, horizontal: 12);
      }),
      appBar: AppBar(
          centerTitle: false,
          title: const Text(
            'Warehouse List',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          )),
    );
  }
}
/*   body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
            child: Row(
              children: [
                const Spacer(),
                Chip(
                  //padding: EdgeInsets.zero,
                  labelPadding:
                      const EdgeInsets.symmetric(vertical: 6).copyWith(left: 4),
                  avatar: Image.asset(
                    "assets/icons/Add Red.png",
                    height: 30,
                  ),
                  label: const Text("Add New Warehouse"),
                  shape: const RoundedRectangleBorder(),
                ),
              ],
            ),
          ),
          Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 47,
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: const BoxDecoration(color: Colors.black),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 44,
                    child: const Text(
                      "S.No.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: Text(
                      "Warehouse Name",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: Text(
                      "Manager",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (!context.isPhone)
                    const Expanded(
                      flex: 2,
                      child: Text(
                        "Phone No.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  if (!context.isPhone)
                    const Expanded(
                      flex: 2,
                      child: Text(
                        "Email ID",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  if (!context.isPhone)
                    const Expanded(
                      flex: 2,
                      child: Text(
                        "Timestamp",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      ))
                ],
              )),
          const Gap(4),
          Expanded(
              child: GetBuilder<WarehouseController>(initState: (state) {
            Get.find<WarehouseController>().getWarehousesByUserId();
          }, builder: (warehouseController) {
            return ListView.builder(
                itemCount: warehouseController.ownerWarehouses.length,
                itemBuilder: (context, i) {
                  Warehouse warehouse = warehouseController.ownerWarehouses[i];

                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Container(
                      width: double.infinity,

                      //  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x0C000000),
                            blurRadius: 2,
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 40,
                              child: Text(
                                i < 9 ? "0${i + 1}" : "${i + 1}",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                warehouse.warehouse_name ?? "",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                warehouse.warehouse_manager ?? "",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            if (!context.isPhone)
                              Expanded(
                                flex: 2,
                                child: Text(
                                  warehouse.phone ?? "",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            if (!context.isPhone)
                              Expanded(
                                flex: 2,
                                child: Text(
                                  warehouse.manage_email ?? "",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            if (!context.isPhone)
                              Expanded(
                                flex: 2,
                                child: Text(
                                  warehouse.created_at.toString() ?? "",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            IconButton(
                                onPressed: () {
                                  // context.pushRoute(const ChamberViewRoute());
                                  // context.pushRoute(ViewWarehouseDetails(
                                  //     warehouse: warehouse));
                                },
                                icon: const Icon(
                                  Icons.more_horiz,
                                  color: Colors.black,
                                ))
                          ],
                        ),
                      ),
                    ),
                  );
                });
          }))
        ],
      ),
 */