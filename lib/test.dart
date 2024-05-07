// import 'package:flutter/material.dart';

// class Testtext extends StatelessWidget {
//   const Testtext({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "labelMedium",
//                 style: Theme.of(context).textTheme.labelMedium,
//               ),
//               Text(
//                 "displayLarge",
//                 style: Theme.of(context).textTheme.displayLarge,
//               ),
//               Text(
//                 "displayMedium",
//                 style: Theme.of(context).textTheme.displayMedium,
//               ),
//               Text(
//                 "displaySmall",
//                 style: Theme.of(context).textTheme.displaySmall,
//               ),
//               Text(
//                 "headlineMedium",
//                 style: Theme.of(context).textTheme.headlineMedium,
//               ),
//               Text(
//                 "headlineSmall",
//                 style: Theme.of(context).textTheme.headlineSmall,
//               ),
//               Text(
//                 "titleLarge",
//                 style: Theme.of(context).textTheme.titleLarge,
//               ),
//               Text(
//                 "titleMedium",
//                 style: Theme.of(context).textTheme.titleMedium,
//               ),
//               Text(
//                 "bodyLarge",
//                 style: Theme.of(context).textTheme.bodyLarge,
//               ),
//               Text(
//                 "bodyMedium",
//                 style: Theme.of(context).textTheme.bodyMedium,
//               ),
//               Text(
//                 "bodySmall",
//                 style: Theme.of(context).textTheme.bodySmall,
//               ),
//               Text(
//                 "labelLarge",
//                 style: Theme.of(context).textTheme.labelLarge,
//               ),
//               Text(
//                 "titleSmall",
//                 style: Theme.of(context).textTheme.titleSmall,
//               ),
//               Text(
//                 "labelSmall",
//                 style: Theme.of(context).textTheme.labelSmall,
//               ),
//             ]),
//       ),
//     );
//   }
// }
// // 
// ColorScheme(
//   brightness: Brightness.dark,
//   primary: Color(0xffE1306C),
//   onPrimary: Colors.white,
//   primaryContainer: Color(0xffE1306C),
//   onPrimaryContainer: Colors.white,
//   secondary: Color(0xffF48FB1),
//   onSecondary: Colors.white,
//   secondaryContainer: Color(0xffF48FB1),
//   onSecondaryContainer: Colors.white,
//   error: Color(0xffD32F2F),
//   onError: Colors.white,
//   errorContainer: Color(0xffD32F2F),
//   onErrorContainer: Colors.white,
//   background: Color(0xff1B1B1F),
//   onBackground: Colors.white,
//   surface: Color(0xff242426),
//   onSurface: Colors.white,
//   surfaceVariant: Color(0xff49454F),
//   onSurfaceVariant: Colors.white,
//   outline: Color(0xff8B858C),
//   outlineVariant: Color(0xff68606F),
//   shadow: Color(0xff000000),
//   scrim: Color(0xff000000),
//   inverseSurface: Color(0xffF4EFF4),
//   onInverseSurface: Color(0xff333039),
//   inversePrimary: Color(0xffD15B9D),
//   surfaceTint: Colors.purple,
// ); 
// //GoogleFonts.oswaldTextTheme() 
// //CardTheme(
//     elevation: 0,
//     shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16),
//         side: BorderSide(color: Colors.black, width: 2),
//     ),
// ),


import 'package:flutter/material.dart';
import 'package:qr_bar_code_scanner_dialog/qr_bar_code_scanner_dialog.dart';


class TestQr extends StatefulWidget {
  const TestQr({super.key});

  @override
  State<TestQr> createState() => _TestQrState();
}

class _TestQrState extends State<TestQr> {

  final _qrBarCodeScannerDialogPlugin = QrBarCodeScannerDialog();
  String? code;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Builder(builder: (context) {
          return Material(
            child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    _qrBarCodeScannerDialogPlugin.getScannedQrBarCode(
                        context: context,
                        onCode: (code) {
                          setState(() {
                            this.code = code;
                          });
                        });
                  },
                  child: Text(code ?? "Click me")),
            ),
          );
        }),
      ),
    );
  }}