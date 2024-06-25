import 'package:blur/blur.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
import 'package:moolwmsstore/Owner/View/Common/cc.dart';
import 'package:moolwmsstore/Owner/View/WarehouseList.dart';
import 'package:moolwmsstore/Owner/View/addWarehouse.dart';
import 'package:moolwmsstore/Owner/View/widget/ownerDrawer.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:moolwmsstore/utils/globals.dart';

////@RoutePage()
class OwnerDashboard extends StatelessWidget {
  const OwnerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Scaffold(
            backgroundColor: Colors.black,
            drawer: context.isPhone ? OwnerDrawer() : null,
            appBar: AppBar(
              centerTitle: false,
              backgroundColor: const Color(0xFF232323),
              title: const Text(
                'Dashboard',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w500,
                  //height: 0,
                  letterSpacing: -0.80,
                ),
              ),
            ),
            body: LiquidPullToRefresh(
              showChildOpacityTransition: false,
              backgroundColor: Colors.white,
              color: AppColors.primaryColor,
              animSpeedFactor: 3,
              onRefresh: () async {
                Get.find<OwnerController>().refreshDashboard();
                return;
              },
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      const Gap(10),
                      InkWell(
                        onTap: () {
                          Get.to(const WarehouseList(), id: ownerNavigationKey);
                        },
                        child: Container(
                          height: 140,
                          decoration: ShapeDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment(-1.00, -0.00),
                              end: Alignment(1, 0),
                              colors: [Color(0xFF5A57FF), Color(0xFF6A68FF)],
                            ),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    const Text(
                                      'Warehouses',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    GetBuilder<OwnerController>(
                                        initState: (state) {
                                      Get.find<OwnerController>()
                                          .getticketWarehouseCount();
                                    }, builder: (ownerController) {
                                      if (ownerController
                                          .isGetIndentWarehouseCountLoading) {
                                        return LoadingAnimationWidget
                                            .staggeredDotsWave(
                                          color: Colors.white,
                                          size: 80,
                                        );
                                      }
                                      return Text(
                                        '${ownerController.warehouseCount ?? "--"}',
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 54,
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      );
                                    }),
                                    const Text(
                                      'Total No. of Warehouses',
                                      style: TextStyle(
                                        color: Color(0xFFC2C0FF),
                                        fontSize: 10,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                const Gap(20),
                                Container(
                                  width: 169.64,
                                  height: 112,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/wareHouseImage.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            flex: 1,
                            child: GetBuilder<OwnerController>(
                                builder: (ownerController) {
                              return InkWell(
                                onTap: () {
                                  showCustomDateRangePicker(
                                    context,
                                    dismissible: true,
                                    minimumDate: DateTime.now()
                                        .subtract(const Duration(days: 30)),
                                    maximumDate: DateTime.now(),
                                    endDate: ownerController.dashBoardEndDate,
                                    startDate:
                                        ownerController.dashBoardStartDate,
                                    backgroundColor: Colors.black,
                                    primaryColor: const Color(0xFF6A68FF),
                                    onApplyClick: (start, end) {
                                      ownerController.changeDashBoardDate(
                                          start: start, end: end);
                                    },
                                    onCancelClick: () {},
                                  );
                                },
                                child: Container(
                                  height: 30,
                                  decoration: ShapeDecoration(
                                    color: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        color: Colors.white
                                            .withOpacity(0.30000001192092896),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0x0C000000),
                                        blurRadius: 4,
                                        offset: Offset(3, 4),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      const Gap(8),
                                      const Icon(
                                        Icons.arrow_back_ios,
                                        color: Color(0xFFACACAC),
                                        size: 20,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "${AppConstants.dayMonrhormatter.format(ownerController.dashBoardStartDate)} - ${AppConstants.dayMonrhormatter.format(ownerController.dashBoardEndDate)}",
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w400,
                                          ),
                                          maxLines: 1,
                                        ),
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xFFACACAC),
                                        size: 20,
                                      ),
                                      const Gap(8),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                          const Gap(8),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: 30,
                              child: GetBuilder<OwnerController>(
                                  builder: (ownerController) {
                                return DropdownButtonFormField2<
                                    WarehousesAcess>(
                                  // value: ownerController.currentlySelectedWarehouse,
                                  decoration: InputDecoration(
                                    focusedBorder: const OutlineInputBorder(
                                        gapPadding: 0,
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 27, 23, 251),
                                            width: 0.4),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    enabledBorder: OutlineInputBorder(
                                        gapPadding: 0,
                                        borderSide: BorderSide(
                                            color: Colors.white.withOpacity(
                                                0.30000001192092896),
                                            width: 1),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10))),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 0),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  hint: const Text(
                                    'All Warehouses',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  items: ownerController.dashboardWarehouses
                                      .map((item) {
                                    return DropdownMenuItem<WarehousesAcess>(
                                      value: item,
                                      child: Row(
                                        children: [
                                          Text(
                                            "${item.warehouse_name}",
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.w400,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
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
                                      ownerController.changeDashBoardWarehouse(
                                          warehouse: value);

                                      //  selectedWarehouseId = value["id"];
                                    }
                                  },
                                  onSaved: (value) {
                                    // ownerController.selectedTempType = value;
                                    // ownerController.update();
                                  },
                                  buttonStyleData: const ButtonStyleData(
                                    padding: EdgeInsets.zero,
                                    //decoration: BoxDecoration(color: Colors.white),
                                    overlayColor:
                                        WidgetStatePropertyAll(Colors.white),
                                  ),
                                  iconStyleData: IconStyleData(
                                    icon: const Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                    ).paddingOnly(right: 10),
                                    iconSize: 24,
                                  ),
                                  dropdownStyleData: DropdownStyleData(
                                    padding: EdgeInsets.zero,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  menuItemStyleData: const MenuItemStyleData(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8)),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                      const Gap(10),
                      Container(
                        height: 100,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF303030),
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 42,
                                    height: 42,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF303030),
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/images/box.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'Material',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child:
                                  GetBuilder<OwnerController>(initState: (d) {
                                Get.find<OwnerController>().getMaterialCount();
                              }, builder: (ownerController) {
                                return Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          'Material In',
                                          style: TextStyle(
                                            color: Color(0xFF8C8C8C),
                                            fontSize: 16,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const Gap(30),
                                        ownerController
                                                .isGetMaterialCountLoading
                                            ? LoadingAnimationWidget
                                                .staggeredDotsWave(
                                                color: Colors.white,
                                                size: 20,
                                              )
                                            : Text(
                                                '${ownerController.materialCountIn}',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 24,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Material Out',
                                          style: TextStyle(
                                            color: Color(0xFF8C8C8C),
                                            fontSize: 16,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const Gap(20),
                                        ownerController
                                                .isGetMaterialCountLoading
                                            ? LoadingAnimationWidget
                                                .staggeredDotsWave(
                                                color: Colors.white,
                                                size: 20,
                                              )
                                            : Text(
                                                '${ownerController.materialCountOut}',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 24,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                      ],
                                    )
                                  ],
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                      const Gap(10),
                      Container(
                        height: 100,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF303030),
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 12.0,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 42,
                                    height: 42,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/Person Icon (R) Dash.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'Person',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GetBuilder<OwnerController>(initState: (d) {
                              Get.find<OwnerController>().getPersonCount();
                            }, builder: (ownerController) {
                              return Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'Person In',
                                        style: TextStyle(
                                          color: Color(0xFF8C8C8C),
                                          fontSize: 16,
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const Gap(30),
                                      ownerController.isGetPersonCountLoading
                                          ? LoadingAnimationWidget
                                              .staggeredDotsWave(
                                              color: Colors.white,
                                              size: 20,
                                            )
                                          : Text(
                                              '${ownerController.personCountIn}',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'Person Out',
                                        style: TextStyle(
                                          color: Color(0xFF8C8C8C),
                                          fontSize: 16,
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const Gap(20),
                                      ownerController.isGetPersonCountLoading
                                          ? LoadingAnimationWidget
                                              .staggeredDotsWave(
                                              color: Colors.white,
                                              size: 20,
                                            )
                                          : Text(
                                              '${ownerController.personCountOut}',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                    ],
                                  )
                                ],
                              );
                            }),
                          ],
                        ),
                      ),
                      const Gap(10),
                      Container(
                        height: 100,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF303030),
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 42,
                                  height: 42,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/vehicleVector.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                const Text(
                                  'Vehicle',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            GetBuilder<OwnerController>(initState: (d) {
                              Get.find<OwnerController>().getVehicleCount();
                            }, builder: (ownerController) {
                              return Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'Vehicle In',
                                        style: TextStyle(
                                          color: Color(0xFF8C8C8C),
                                          fontSize: 16,
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const Gap(30),
                                      ownerController.isGetVehicleCountLoading
                                          ? LoadingAnimationWidget
                                              .staggeredDotsWave(
                                              color: Colors.white,
                                              size: 20,
                                            )
                                          : Text(
                                              '${ownerController.vehicleCountIn}',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'Vehicle Out',
                                        style: TextStyle(
                                          color: Color(0xFF8C8C8C),
                                          fontSize: 16,
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const Gap(20),
                                      ownerController.isGetVehicleCountLoading
                                          ? LoadingAnimationWidget
                                              .staggeredDotsWave(
                                              color: Colors.white,
                                              size: 20,
                                            )
                                          : Text(
                                              '${ownerController.vehicleCountOut}',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                    ],
                                  )
                                ],
                              );
                            }),
                          ],
                        ),
                      ),
                      const Gap(10),
                      Container(
                        height: 100,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF303030),
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 12.0,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 42,
                                    height: 42,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/Dashboard Icons (R).png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'Visitor',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GetBuilder<OwnerController>(initState: (d) {
                              Get.find<OwnerController>().getVisitorCount();
                            }, builder: (ownerController) {
                              return Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'Visitor In',
                                        style: TextStyle(
                                          color: Color(0xFF8C8C8C),
                                          fontSize: 16,
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const Gap(40),
                                      ownerController.isGetVisitorCountLoading
                                          ? LoadingAnimationWidget
                                              .staggeredDotsWave(
                                              color: Colors.white,
                                              size: 20,
                                            )
                                          : Text(
                                              '${ownerController.visitorCountIn}',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'Visitor Out',
                                        style: TextStyle(
                                          color: Color(0xFF8C8C8C),
                                          fontSize: 16,
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const Gap(30),
                                      ownerController.isGetVisitorCountLoading
                                          ? LoadingAnimationWidget
                                              .staggeredDotsWave(
                                              color: Colors.white,
                                              size: 20,
                                            )
                                          : Text(
                                              '${ownerController.visitorCountOut}',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                    ],
                                  )
                                ],
                              );
                            }),
                          ],
                        ),
                      ),
                      const Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              height: 150,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF303030),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Colors.white),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    const Gap(30),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Gap(20),
                                        const Text(
                                          'Occupancy ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const Gap(20),
                                        const Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Vacant',
                                              style: TextStyle(
                                                color: Color(0xFF8C8C8C),
                                                fontSize: 10,
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Gap(60),
                                            Text(
                                              '--%',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Occupied',
                                              style: TextStyle(
                                                color: Color(0xFF8C8C8C),
                                                fontSize: 10,
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Gap(50),
                                            Text(
                                              '--%',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Gap(20),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 50,
                                              height: 20,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5,
                                                      vertical: 2),
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      width: 0.50,
                                                      color: Color(0xFF2A2A2A)),
                                                  borderRadius:
                                                      BorderRadius.circular(2),
                                                ),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  'Warehouse',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF595959),
                                                    fontSize: 7,
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 50,
                                              height: 20,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5,
                                                      vertical: 2),
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      width: 0.50,
                                                      color: Color(0xFF2A2A2A)),
                                                  borderRadius:
                                                      BorderRadius.circular(2),
                                                ),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  'Chamber',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF595959),
                                                    fontSize: 7,
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 40,
                                              height: 20,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5,
                                                      vertical: 2),
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      width: 0.50,
                                                      color: Color(0xFF2A2A2A)),
                                                  borderRadius:
                                                      BorderRadius.circular(2),
                                                ),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  'Pallet',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF595959),
                                                    fontSize: 7,
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Gap(8),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Gap(12),
                          Expanded(
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              height: 150,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF303030),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Colors.white),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: GetBuilder<OwnerController>(
                                  builder: (ownerController) {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Gap(20),
                                    const Text(
                                      'Indents',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'AllTickets',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF595959),
                                            fontSize: 7,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Spacer(),
                                        ownerController
                                                .isGetIndentWarehouseCountLoading
                                            ? LoadingAnimationWidget
                                                .staggeredDotsWave(
                                                color: Colors.white,
                                                size: 20,
                                              )
                                            : Text(
                                                '${ownerController.allIndentCount}',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 24,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Sales',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF595959),
                                            fontSize: 7,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Spacer(),
                                        ownerController
                                                .isGetIndentWarehouseCountLoading
                                            ? LoadingAnimationWidget
                                                .staggeredDotsWave(
                                                color: Colors.white,
                                                size: 20,
                                              )
                                            : Text(
                                                '${ownerController.salesIndentCount}',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 24,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Security Guard',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF595959),
                                            fontSize: 7,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Spacer(),
                                        ownerController
                                                .isGetIndentWarehouseCountLoading
                                            ? LoadingAnimationWidget
                                                .staggeredDotsWave(
                                                color: Colors.white,
                                                size: 20,
                                              )
                                            : Text(
                                                '${ownerController.sgIndentCount}',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 24,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                      ],
                                    ),
                                  ],
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                      const Gap(40)
                    ],
                  ),
                ),
              ).paddingSymmetric(
                  vertical: Dimensions.vericalBodyPad,
                  horizontal: Dimensions.horizontalBodyPad),
            )),
        GetBuilder<OwnerController>(builder: (ownerController) {
          return ownerController.user.warehouse != null
              ? Container()
              : Blur(
                  blur: 1.5,
                  blurColor: Colors.black,
                  child: Container(
                    alignment: Alignment.center,
                    height: context.height,
                    width: context.width,
                  ),
                );
        }),
        GetBuilder<OwnerController>(builder: (ownerController) {
          return ownerController.user.warehouse != null
              ? Container()
              : Material(
                  child: Container(
                    width: double.infinity,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 182,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                  "assets/icons/dialoginitial.png",
                                ),
                                fit: BoxFit.cover),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const Gap(22),
                        const Text(
                          'Add your Warehouse now!',
                          style: TextStyle(
                            color: Color(0xFF353535),
                            fontSize: 18,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          'Adding your warehouse can significantly expand your reach\nand increase your revenue potential.',
                          style: TextStyle(
                            color: Color(0xFFA7A7A7),
                            fontSize: 12,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Gap(22),
                        Center(
                          child: InkWell(
                            onTap: () {
                              Get.to(const AddWarehouse(),
                                  id: ownerNavigationKey);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 50,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF5A57FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: const Text(
                                'Add Warehouse',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ).paddingAll(12),
                  ).paddingSymmetric(horizontal: 12),
                );
        }),
      ],
    );
  }
}
