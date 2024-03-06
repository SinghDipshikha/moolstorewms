import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/customButton.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SelectRole extends StatefulWidget {
  const SelectRole({super.key});

  @override
  _SelectRoleState createState() => _SelectRoleState();
}

class _SelectRoleState extends State<SelectRole> {
  List data = [
    {
      "tittle": 'warehouse_owner',
      "subtitle":
          "i_am_an_individual_logging_in_to_view_my_person_in_and_out_at_various_locations_using_MoolWMS",
      "asset": "assets/icons/Group.png"
    },
    {
      "tittle": 'individual_user',
      "subtitle":
          "i_am_an_individual_logging_in_to_view_my_person_in_and_out_at_various_locations_using_MoolWMS",
      "asset": "assets/icons/user.png"
    }
  ];
  int? selectedindex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          kIsWeb ? null : FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomButton(
          width: isMobile(context) ? 200 : null,
          rightIcon: "assets/icons/Arrow_right.png",
          glow: selectedindex != null,
          onTap: () {
            if (selectedindex == 0) {
              //  context.pushReplacement('/Signup');
            } else if (selectedindex == 1) {
              AppDecorations.redSnack(
                  'please_contact_respective_warehouse_owner_to_get_the_login_credentials'
                      .tr);
            }
            //   context.pushReplacement('/mobile');
          },
          //    glow: false,
          title: 'next'.tr,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/ic_logo.png",
              height: isMobile(context) ? 8.h : 12.h,
              width: isMobile(context) ? 50.w : null,
            ),
            const Gap(20),
            Text(
              ('select_role'.tr),
              style: TextStyles.titleMedium(context),
              textAlign: TextAlign.center,
            ),
            Text(
              ("choose_role".tr),
              style: TextStyles.bodyMedium(context),
            ),
            Container(
              constraints: BoxConstraints(maxWidth: 94.w),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedindex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // height: 175,
                        padding: EdgeInsets.symmetric(
                            horizontal: isMobile(context) ? 20 : 14,
                            vertical: 20),
                        decoration: selectedindex == index
                            ? AppDecorations.selectedelevatedShadowDecoration
                            : AppDecorations.elevatedShadowDecoration,
                        child: isMobile(context)
                            ? Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: 70,
                                      child: Image.asset(
                                        data[index]["asset"],
                                        height: 6.h,
                                        color: selectedindex == index
                                            ? Colors.white
                                            : null,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                          (data[index]["tittle"].toString().tr),
                                          style: TextStyles.bodyMedium(context)
                                              .copyWith(
                                                  color: selectedindex == index
                                                      ? Colors.white
                                                      : null)),
                                    ),
                                    Text(data[index]["subtitle"].toString().tr,
                                        style: TextStyles.bodysmall(context)
                                            .copyWith(
                                          color: selectedindex == index
                                              ? Colors.white
                                              : const Color(0xFF595959),
                                        ),
                                        textAlign: TextAlign.left)
                                  ],
                                ),
                              )
                            : Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: SizedBox(
                                      width: 70,
                                      child: Image.asset(
                                        data[index]["asset"],
                                        height: 6.h,
                                        color: selectedindex == index
                                            ? Colors.white
                                            : null,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                            (data[index]["tittle"]
                                                .toString()
                                                .tr),
                                            style:
                                                TextStyles.bodyMedium(context)
                                                    .copyWith(
                                                        color: selectedindex ==
                                                                index
                                                            ? Colors.white
                                                            : null)),
                                        Text(
                                            data[index]["subtitle"]
                                                .toString()
                                                .tr,
                                            style: TextStyles.bodysmall(context)
                                                .copyWith(
                                              color: selectedindex == index
                                                  ? Colors.white
                                                  : const Color(0xFF595959),
                                            ),
                                            textAlign: TextAlign.left)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
