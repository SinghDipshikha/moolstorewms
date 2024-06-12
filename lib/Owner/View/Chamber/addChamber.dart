// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:gap/gap.dart';
// import 'package:get/get.dart';
// import 'package:logger/logger.dart';
// import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
// import 'package:moolwmsstore/Owner/View/Common/ownerCommon.dart';
// import 'package:moolwmsstore/utils/textutils.dart';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:logger/web.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
import 'package:moolwmsstore/Owner/View/Common/ownerCommon.dart';
import 'package:number_text_input_formatter/number_text_input_formatter.dart';

class AddChamberView extends StatelessWidget {
  int? warehouse_id;
  AddChamberView({super.key, this.warehouse_id});
  final _formKey = GlobalKey<FormState>();

  List tempTypes = ["celsius", "fahrenheit"];

  List refrigerationType = [
    "ammonia_refrigeration",
    "CO2_refrigeration",
    "freon_refrigeration",
    "glycol_ammonia_refrigeration_system"
  ];
  List typeOfRacking = [
    "mezzanine_racking",
    "single_deep_racking",
    "double_deep_racking",
    "drive_in_racking",
    "moving_single_deep_racking",
    "moving_double_deep_racking",
    "wooden_mezzanine_racking"
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OwnerController>(builder: (ownerController) {
      return Scaffold(
        body: ownerController.loading
            ? Center(
                child: LoadingAnimationWidget.staggeredDotsWave(
                  color: const Color(0xFF5A57FF),
                  size: 80,
                ),
              )
            : Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      StyledContainer(
                          child: Column(
                        children: [
                          CommonTextField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [NumberTextInputFormatter()],
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                {
                                  return 'required';
                                }
                              } else {
                                return null;
                              }
                            },
                            onChanged: (p0) {
                              ownerController.addChamberModel = ownerController
                                  .addChamberModel
                                  .copyWith(chamber_number: int.parse(p0));
                            },
                            labelText: 'Chamber Number',
                            containerColor: Colors.white,
                            // hintText: 'Enter chambers number',
                          ),
                          const Gap(8),
                          CommonTextField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [NumberTextInputFormatter()],
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                {
                                  return 'required';
                                }
                              } else {
                                return null;
                              }
                            },
                            onChanged: (p0) {
                              ownerController.addChamberModel = ownerController
                                  .addChamberModel
                                  .copyWith(floor_number: int.parse(p0));
                            },
                            labelText: 'Floor Number',
                            containerColor: Colors.white,
                            // hintText: 'Enter chambers number',
                          ),
                          const Gap(8),
                        ],
                      )).paddingAll(12),
                      StyledContainer(
                          child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Temperature Option',
                                      style: TextStyle(
                                        color: Color(0xFF595959),
                                        fontSize: 16,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Gap(8),
                              Container(
                                color: Colors.white,
                                child: DropdownButtonFormField2<String>(
                                  value: ownerController.selectedTempType,
                                  decoration: InputDecoration(
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 27, 23, 251),
                                            width: 0.4),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 169, 153, 246),
                                            width: 0.2),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    // Add Horizontal padding using menuItemStyleData.padding so it matches
                                    // the menu padding when button's width is not specified.
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 16, horizontal: 0),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    // Add more decoration..
                                  ),
                                  hint: const Text(
                                    'Select',
                                    style: TextStyle(
                                      color: Color(0xFFACACAC),
                                      fontSize: 12,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  items: tempTypes.map((item) {
                                    return DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
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
                                      ownerController.selectedTempType = value;
                                      ownerController.update();
                                    }
                                  },
                                  onSaved: (value) {
                                    ownerController.addChamberModel =
                                        ownerController.addChamberModel
                                            .copyWith(temp_type: value);
                                    ownerController.selectedTempType = value;
                                    ownerController.update();
                                  },
                                  buttonStyleData: const ButtonStyleData(
                                    //decoration: BoxDecoration(color: Colors.white),
                                    overlayColor:
                                        WidgetStatePropertyAll(Colors.white),
                                  ),
                                  iconStyleData: IconStyleData(
                                    icon: const Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    ).paddingOnly(right: 10),
                                    iconSize: 24,
                                  ),
                                  dropdownStyleData: DropdownStyleData(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  menuItemStyleData: const MenuItemStyleData(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Gap(8),
                          CommonTextField(
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                {
                                  return 'required';
                                }
                              } else {
                                return null;
                              }
                            },
                            inputFormatters: [
                              NumberTextInputFormatter(allowNegative: true)
                            ],
                            onChanged: (p0) {
                              if (p0.isNum) {
                                ownerController.addChamberModel =
                                    ownerController.addChamberModel.copyWith(
                                        temp_min_range: int.parse(p0));
                              }
                            },
                            suffixIcon: Text(
                              ownerController.selectedTempType == "fahrenheit"
                                  ? '℉'
                                  : '℃',
                              style: const TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 12,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w300,
                              ),
                            ).paddingOnly(top: 14),
                            labelText: 'Minimum Temperature',
                            containerColor: Colors.white,
                          ),
                          const Gap(8),
                          CommonTextField(
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                {
                                  return 'required';
                                }
                              } else {
                                return null;
                              }
                            },
                            // keyboardType: TextInputType.number,
                            inputFormatters: [
                              NumberTextInputFormatter(allowNegative: true)
                            ],
                            onChanged: (p0) {
                              if (p0.isNum) {
                                ownerController.addChamberModel =
                                    ownerController.addChamberModel.copyWith(
                                        temp_max_range: int.parse(p0));
                              }
                            },
                            suffixIcon: Text(
                              ownerController.selectedTempType == "fahrenheit"
                                  ? '℉'
                                  : '℃',
                              style: const TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 12,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w300,
                              ),
                            ).paddingOnly(top: 14),
                            labelText: 'Maximum Temperature',
                            containerColor: Colors.white,
                          ),
                        ],
                      )).paddingAll(12),
                      StyledContainer(
                          child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Racking Type',
                                      style: TextStyle(
                                        color: Color(0xFF595959),
                                        fontSize: 16,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Gap(8),
                              Container(
                                color: Colors.white,
                                child: DropdownButtonFormField2<String>(
                                  decoration: InputDecoration(
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 27, 23, 251),
                                            width: 0.4),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 169, 153, 246),
                                            width: 0.2),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    // Add Horizontal padding using menuItemStyleData.padding so it matches
                                    // the menu padding when button's width is not specified.
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 16, horizontal: 0),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    // Add more decoration..
                                  ),
                                  hint: const Text(
                                    'Select',
                                    style: TextStyle(
                                      color: Color(0xFFACACAC),
                                      fontSize: 12,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  items: typeOfRacking.map((item) {
                                    return DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
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
                                      ownerController.addChamberModel =
                                          ownerController.addChamberModel
                                              .copyWith(type_of_racking: value);

                                      // ownerController.selectedTempType = value;
                                      // ownerController.update();
                                    }
                                  },
                                  onSaved: (value) {
                                    // ownerController.selectedTempType = value;
                                    // ownerController.update();
                                  },
                                  buttonStyleData: const ButtonStyleData(
                                    //decoration: BoxDecoration(color: Colors.white),
                                    overlayColor:
                                        WidgetStatePropertyAll(Colors.white),
                                  ),
                                  iconStyleData: IconStyleData(
                                    icon: const Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    ).paddingOnly(right: 10),
                                    iconSize: 24,
                                  ),
                                  dropdownStyleData: DropdownStyleData(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  menuItemStyleData: const MenuItemStyleData(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Gap(8),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Refigration Type',
                                      style: TextStyle(
                                        color: Color(0xFF595959),
                                        fontSize: 16,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Gap(8),
                              Container(
                                color: Colors.white,
                                child: DropdownButtonFormField2<String>(
                                  decoration: InputDecoration(
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 27, 23, 251),
                                            width: 0.4),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 169, 153, 246),
                                            width: 0.2),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    // Add Horizontal padding using menuItemStyleData.padding so it matches
                                    // the menu padding when button's width is not specified.
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 16, horizontal: 0),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    // Add more decoration..
                                  ),
                                  hint: const Text(
                                    'Select',
                                    style: TextStyle(
                                      color: Color(0xFFACACAC),
                                      fontSize: 12,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  items: refrigerationType.map((item) {
                                    return DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
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
                                      ownerController.addChamberModel =
                                          ownerController.addChamberModel
                                              .copyWith(
                                                  refrigeration_type: value);

                                      // ownerController.selectedTempType = value;
                                      // ownerController.update();
                                    }
                                  },
                                  onSaved: (value) {
                                    // ownerController.selectedTempType = value;
                                    // ownerController.update();
                                  },
                                  buttonStyleData: const ButtonStyleData(
                                    //decoration: BoxDecoration(color: Colors.white),
                                    overlayColor:
                                        WidgetStatePropertyAll(Colors.white),
                                  ),
                                  iconStyleData: IconStyleData(
                                    icon: const Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    ).paddingOnly(right: 10),
                                    iconSize: 24,
                                  ),
                                  dropdownStyleData: DropdownStyleData(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  menuItemStyleData: const MenuItemStyleData(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Gap(8),
                        ],
                      )).paddingAll(12),
               
                      StyledContainer(
                          child: Column(
                        children: [
                          CommonTextField(
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                {
                                  return 'required';
                                }
                              } else {
                                return null;
                              }
                            },
                            labelText: 'Total Pallets',
                            containerColor: Colors.white,
                            keyboardType: TextInputType.number,
                            inputFormatters: [NumberTextInputFormatter()],
                            onChanged: (p0) {
                              ownerController.addChamberModel = ownerController
                                  .addChamberModel
                                  .copyWith(pallate_count: int.parse(p0));
                            },
                          ),
                          const Gap(8),
                          CommonTextField(
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                {
                                  return 'required';
                                }
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.number,
                            inputFormatters: [NumberTextInputFormatter()],
                            onChanged: (p0) {
                              ownerController.addChamberModel = ownerController
                                  .addChamberModel
                                  .copyWith(stacking_level: int.parse(p0));
                            },
                            labelText: 'Stacking Levels',
                            containerColor: Colors.white,
                          ),
                          const Gap(8),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            const Color(0xFFACACAC),
                                      ),
                                      child: Checkbox(
                                          value: (ownerController
                                                      .addChamberModel
                                                      .contolled_atmosphere ??
                                                  0) ==
                                              1,
                                          onChanged: (c) {
                                            if (c == true) {
                                              ownerController.addChamberModel =
                                                  ownerController
                                                      .addChamberModel
                                                      .copyWith(
                                                          contolled_atmosphere:
                                                              1);
                                            } else {
                                              ownerController.addChamberModel =
                                                  ownerController
                                                      .addChamberModel
                                                      .copyWith(
                                                          contolled_atmosphere:
                                                              0);
                                            }
                                            ownerController.update();
                                          })),
                                  const Text(
                                    'Controlled\nAtmosphere',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFACACAC),
                                      fontSize: 14,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            const Color(0xFFACACAC),
                                      ),
                                      child: Checkbox(
                                          value: (ownerController
                                                      .addChamberModel
                                                      .humidifier ??
                                                  0) ==
                                              1,
                                          onChanged: (c) {
                                            if (c == true) {
                                              ownerController.addChamberModel =
                                                  ownerController
                                                      .addChamberModel
                                                      .copyWith(humidifier: 1);
                                            } else {
                                              ownerController.addChamberModel =
                                                  ownerController
                                                      .addChamberModel
                                                      .copyWith(humidifier: 0);
                                            }
                                            ownerController.update();
                                          })),
                                  const Text(
                                    'Humidifier',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFACACAC),
                                      fontSize: 14,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            const Color(0xFFACACAC),
                                      ),
                                      child: Checkbox(
                                          value: (ownerController
                                                      .addChamberModel
                                                      .ozone_filteration ??
                                                  0) ==
                                              1,
                                          onChanged: (c) {
                                            if (c == true) {
                                              ownerController.addChamberModel =
                                                  ownerController
                                                      .addChamberModel
                                                      .copyWith(
                                                          ozone_filteration: 1);
                                            } else {
                                              ownerController.addChamberModel =
                                                  ownerController
                                                      .addChamberModel
                                                      .copyWith(
                                                          ozone_filteration: 0);
                                            }
                                            ownerController.update();
                                          })),
                                  const Text(
                                    'Ozone\nFiltration',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFACACAC),
                                      fontSize: 14,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      )).paddingAll(12),

                      CustomButton(
                        title: "Submit",
                        onTap: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            ownerController.addChamberModel =
                                ownerController.addChamberModel.copyWith(
                                    user_id: ownerController.user.id,
                                    warehouse_id: warehouse_id);
                            Logger()
                                .i(ownerController.addChamberModel.toJson());
                            ownerController.addChamber();
                          }
                        },
                      ).paddingAll(12),
                    ],
                  ).paddingOnly(bottom: 20),
                ),
              ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'add_chamber'.tr,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      );
    });
  }
}

