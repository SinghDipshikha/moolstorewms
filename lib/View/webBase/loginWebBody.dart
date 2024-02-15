import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/localization_controller.dart';
import 'package:moolwmsstore/View/Walkthrough/walkThrough.dart';
import 'package:moolwmsstore/View/common/animated_dialog.dart';
import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:platform_detector/platform_detector.dart';

@RoutePage()
class LoginWebBody extends StatefulWidget {
  const LoginWebBody({Key? key}) : super(key: key);

  @override
  _LoginWebBodyState createState() => _LoginWebBodyState();
}

class _LoginWebBodyState extends State<LoginWebBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isMobile()
          ? const AutoRouter()
          : Stack(
              alignment: Alignment.topRight,
              children: [
                const Row(
                  children: [
                    Expanded(flex: 2, child: WalkThrough()),
                    Expanded(
                      flex: 1,
                      child: AutoRouter(),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: PopupMenuButton(
                    child: Icon(
                      Icons.more_vert,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    onSelected: (val) async {
                      if (val == "CHANGE_LANGUAGE") {
                        showAnimatedDialog(
                            animationType:
                                DialogTransitionType.slideFromLeftFade,
                            barrierDismissible: true,
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: Theme.of(context).cardColor,
                                title: Text('select_your_language'.tr),
                                content: GetBuilder<LocalizationController>(
                                    builder: (localizationController) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'please_select_your_prefer_languages'
                                            .tr,
                                        style: TextStyle(
                                            color: Theme.of(context).hintColor),
                                      ),
                                      const Gap(10),
                                      Wrap(
                                        children: List.generate(
                                            AppConstants.LANGUAGE_LIST.length,
                                            (index) => Padding(
                                                  padding:
                                                      const EdgeInsets.all(3.0),
                                                  child: InkWell(
                                                    onTap: () {
                                                      localizationController
                                                          .setLanguage(Locale(
                                                              AppConstants
                                                                  .LANGUAGE_LIST[
                                                                      index]
                                                                  .languageCode));
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                          color: localizationController
                                                                      .locale
                                                                      .languageCode ==
                                                                  AppConstants
                                                                      .LANGUAGE_LIST[
                                                                          index]
                                                                      .languageCode
                                                              ? Theme.of(
                                                                      context)
                                                                  .primaryColor
                                                              : null),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(13.0),
                                                        child: Text(
                                                          AppConstants
                                                              .LANGUAGE_LIST[
                                                                  index]
                                                              .languageName,
                                                          style: localizationController
                                                                      .locale
                                                                      .languageCode ==
                                                                  AppConstants
                                                                      .LANGUAGE_LIST[
                                                                          index]
                                                                      .languageCode
                                                              ? TextStyle(
                                                                  color: Theme.of(
                                                                          context)
                                                                      .cardColor)
                                                              : null,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )),
                                      ),
                                    ],
                                  );
                                }),
                              );
                            });
                        // Navigator.of(context).pushNamed('/changelanguage');
                      } else if (val == "CHAT_SUPPORT") {
                        // await FlutterFreshchat.showConversations(
                        //     title: 'MoolWMS Chat Support');
                      }
                    },
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                          value: "CHANGE_LANGUAGE",
                          child: Row(children: <Widget>[
                            Icon(Icons.translate,
                                size: 20, color: Colors.grey[700]),
                            const SizedBox(width: 8),
                            Text("change_language".tr)
                          ]),
                        ),
                        PopupMenuItem(
                          value: "CHAT_SUPPORT",
                          child: Row(children: <Widget>[
                            Icon(Icons.live_help,
                                size: 20, color: Colors.grey[700]),
                            const SizedBox(width: 8),
                            Text("chat_support".tr)
                          ]),
                        )
                      ];
                    },
                  ),
                )
              ],
            ),
    );
  }
}
