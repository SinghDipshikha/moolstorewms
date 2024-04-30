import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/widgets/commonTextField.dart';
import 'package:moolwmsstore/View/Roles/Hr/constants/validations.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/Register/checkedInSaved.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/Register/registrationList.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/widgets/commonAppBar.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/widgets/commonButtons.dart';
import 'package:moolwmsstore/View/common/tagContainer.dart';
import 'package:moolwmsstore/utils/globals.dart';

class RegistrationEntryReviewScreen extends StatefulWidget {
  const RegistrationEntryReviewScreen({super.key});

  @override
  State<RegistrationEntryReviewScreen> createState() =>
      _RegistrationEntryReviewScreenState();
}

class _RegistrationEntryReviewScreenState
    extends State<RegistrationEntryReviewScreen> {
  @override
  TextEditingController ogn = TextEditingController();
  TextEditingController pan = TextEditingController();
  TextEditingController fn = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const RegistrationListScreen(),
          ));
        },
        title: 'Verify',
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 169,
                    height: 39,
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 30,
                      right: 10,
                      bottom: 10,
                    ),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x195A57FF)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'PO No. : 12345',
                      style: TextStyle(
                        color: Color(0xFFACACAC),
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                  Container(
                    width: 169,
                    height: 39,
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 30,
                      right: 10,
                      bottom: 10,
                    ),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x195A57FF)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Ticket ID : 54321',
                          style: TextStyle(
                            color: Color(0xFFACACAC),
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TagContainer(
                        title: 'Product Name',
                        child: Column(
                          children: [
                            CommonTextField(
                              controller: ogn,
                              textCapitalization: TextCapitalization.words,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter Product name.';
                                }

                                return null;
                              },
                              labelText: 'Product Name',
                              hintText: 'Enter your product’s name',
                            ),
                            const Gap(16),
                            CommonTextField(
                              controller: pan,
                              textCapitalization: TextCapitalization.characters,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter quantity';
                                }

                                if (!GlobalValidator.isValidPAN(value)) {
                                  return 'Please enter a valid quantity.';
                                }

                                return null;
                              },
                              //  validator: ,
                              // inputFormatters: [
                              //   FilteringTextInputFormatter.allow(
                              //       RegExp(r"^[A-Z]{5}[0-9]{4}[A-Z]{1}$"))
                              // ],
                              labelText: "Quantity",
                              hintText: "Enter Quantity",
                            ),
                            const Gap(16),
                            CommonTextField(
                              controller: pan,
                              textCapitalization: TextCapitalization.characters,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter units';
                                }

                                if (!GlobalValidator.isValidPAN(value)) {
                                  return 'Please enter a valid units.';
                                }

                                return null;
                              },
                              //  validator: ,
                              // inputFormatters: [
                              //   FilteringTextInputFormatter.allow(
                              //       RegExp(r"^[A-Z]{5}[0-9]{4}[A-Z]{1}$"))
                              // ],
                              labelText: "Units",
                              hintText: "Enter Units",
                            ),
                            const Gap(16),
                          ],
                        ).paddingSymmetric(vertical: 16, horizontal: 16)),
                    const Gap(10),
                    TagContainer(
                        title: 'Vehicle Number',
                        child: Column(
                          children: [
                            CommonTextField(
                              controller: fn,
                              textCapitalization: TextCapitalization.words,
                              labelText: "Vehicle Number",
                              hintText: "Enter full vehicle number",
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your vehicle number.';
                                }

                                return null;
                              },
                              onChanged: (value) {},
                            ),
                            const Gap(16),
                            CommonTextField(
                              controller: fn,
                              textCapitalization: TextCapitalization.words,
                              labelText: "Driver Name",
                              hintText: "Enter full name",
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your driver name.';
                                }

                                return null;
                              },
                              onChanged: (value) {},
                            ),
                            const Gap(16),
                          ],
                        ).paddingSymmetric(vertical: 16, horizontal: 16)),
                  ],
                ),
              ),
              const Gap(16),
              CustomFloatingActionButton(
                title: 'Vehicle In',
                color: const Color(0xFF04BF8A),
                onTap: () {
                

                    Get.to(const CheckedInSavedStatus(),
                    id: securityGuardNavigation);
                },
              ),
              const Gap(16),
              CustomFloatingActionButton(
                title: 'Vehicle Out',
                color: const Color(0xFFFF5F5D),
              ),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
