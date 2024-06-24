import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/dock.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/vehicle.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsController.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/globals.dart';

class DocklistDialog extends StatefulWidget {
  Vehicle entry;
  DocklistDialog({super.key, required this.entry});

  @override
  State<DocklistDialog> createState() => _DocklistDialogState();
}

class _DocklistDialogState extends State<DocklistDialog> {
  bool dockAssigned = false;
  bool loading = true;
  List<Dock>? docks;
  Dock? selectedDock;

  getDockList() {
    Get.find<DmsController>().dmsRepo.getUnassignedDocks().then((v) {
      setState(() {
        loading = false;
        docks = v;
      });
    });
  }

  assignDock() {
    if (selectedDock != null) {
      Get.find<DmsController>()
          .dmsRepo
          .assignDockToVehicle(
              rowId: widget.entry.id as int,
              dockNumber: selectedDock!.dock_id as int)
          .then((v) {
        if (v) {
          Get.back(id: salesNavigationKey);

          Snacks.greenSnack(
              "Dock Assigned to vehicle ${widget.entry.vehicle_number}");
        }
      });
    }
  }

  @override
  void initState() {
    getDockList();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: Colors.transparent,
      color: Colors.black.withOpacity(0.4),
      elevation: 0,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(32),
          ),
        ),
        child: loading
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: LoadingAnimationWidget.staggeredDotsWave(
                      color: AppColors.primaryColor,
                      size: 80,
                    ),
                  ),
                  const Gap(12),
                  InkWell(
                    onTap: () {
                      Get.back(id: salesNavigationKey);
                    },
                    child: Container(
                      width: 100,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF94F46),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: context.width * 0.9,
                    height: 62,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF5A57FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Assign Dock',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    child: loading == false && docks == null
                        ? const Center(
                            child: Text("No Docks Avialable"),
                          )
                        : GridView.builder(
                            itemCount: docks!.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    crossAxisCount: 2,
                                    childAspectRatio: 3),
                            itemBuilder: (context, i) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedDock = docks![i];
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: ShapeDecoration(
                                    color: selectedDock == docks![i]
                                        ? const Color(0xFF5A57FF)
                                        : const Color(0x195E57FC),
                                    // color: const Color(0xFF5A57FF),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    shadows: selectedDock == docks![i]
                                        ? [
                                            const BoxShadow(
                                              color: Color(0xFF000000),
                                              blurRadius: 0,
                                              offset: Offset(4, 4),
                                              spreadRadius: 0,
                                            )
                                          ]
                                        : null,
                                  ),
                                  child: Text(
                                    docks![i].dock_name ?? "--",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: selectedDock == docks![i]
                                          ? Colors.white
                                          : const Color(0xFF595959),
                                      fontSize: 20,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              );
                            }).paddingAll(10),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Get.back(id: salesNavigationKey);
                          },
                          child: Container(
                            height: 50,
                            alignment: Alignment.center,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF94F46),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              'Cancel',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      if (selectedDock != null) const Gap(12),
                      if (selectedDock != null)
                        Expanded(
                            child: InkWell(
                          onTap: assignDock,
                          child: Container(
                            height: 50,
                            alignment: Alignment.center,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF02A676),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              'Assign',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ))
                    ],
                  ).paddingSymmetric(horizontal: 12, vertical: 8)
                ],
              ),
      ).paddingAll(33),
    );
  }
}
