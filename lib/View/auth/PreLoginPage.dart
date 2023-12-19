
// import 'package:flutter/material.dart';


// class PreLoginPage extends StatefulWidget {
//   @override
//   _PreLoginPageState createState() => _PreLoginPageState();
// }

// class _PreLoginPageState extends State<PreLoginPage> {
//   LanguageModel selectedLocale;
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   @override
//   void initState() {
//     super.initState();
//     String languageCode =
//         SharedPrefs.getPref(PrefConstants.LANGUAGE_CODE, defaultValue: "en");
//     selectedLocale = AppConstants.LANGUAGE_LIST
//         .firstWhere((element) => element.languageCode == languageCode);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Form(
//         key: _formKey,
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                   AppLocalizations.of(context)
//                       .translate("select_your_language"),
//                   style: Theme.of(context).textTheme.headline5),
//               const SizedBox(height: 6),
//               Text(
//                   AppLocalizations.of(context)
//                       .translate("please_select_your_prefer_languages"),
//                   style: Theme.of(context)
//                       .textTheme
//                       .bodyText2
//                       .copyWith(color: ColorConstants.GREY_DARK)),
//               const SizedBox(height: 12),
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: AppConstants.LANGUAGE_LIST.map<Widget>((e) {
//                   return Container(
//                       child: InkWell(
//                     onTap: () {
//                       setState(() {
//                         selectedLocale = e;
//                       });
//                     },
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Container(
//                           width: MediaQuery.of(context).size.width * 0.35,
//                           child: Text(
//                             e.languageName,
//                             textAlign: TextAlign.center,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .subtitle1
//                                 .copyWith(
//                                     color: e != selectedLocale
//                                         ? ColorConstants.PRIMARY_DARK
//                                         : Colors.white,
//                                     fontWeight: FontWeight.w600),
//                           ),
//                           padding:
//                               const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
//                           margin:
//                               const EdgeInsets.symmetric(horizontal: 4, vertical: 12),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(8),
//                               boxShadow: [
//                                 BoxShadow(
//                                     color: Colors.grey.withOpacity(0.3),
//                                     blurRadius: 4,
//                                     spreadRadius: 1)
//                               ],
//                               gradient: LinearGradient(
//                                   colors: e != selectedLocale
//                                       ? [Colors.white, Colors.white]
//                                       : [
//                                           ColorConstants.BUTTON_DARK,
//                                           ColorConstants.BUTTON_LIGHT
//                                         ],
//                                   begin: Alignment.centerLeft,
//                                   end: Alignment.centerRight)),
//                         )
//                       ],
//                     ),
//                   ));
//                 }).toList(),
//               ),
//               const SizedBox(height: 32),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomButtonsContainer(
//         children: [
//           GradientButton(
//             onPressed: () async {
//               if (_formKey.currentState.validate()) {
//                 _formKey.currentState.save();
//                 globals.languageStore.changeLocale(selectedLocale.language);
//                 if (Navigator.of(context).canPop()) {
//                   Navigator.of(context).pop();
//                 } else {
//                   Navigator.of(context)
//                       .pushNamedAndRemoveUntil('/', (context) => false);
//                 }
//               }
//             },
//             child: Text(AppLocalizations.of(context).translate("continue")),
//           ),
//         ],
//       ),
//     );
//   }
// }
