// import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// class QRScanScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _QRScanScreenState();
// }

// class _QRScanScreenState extends State<QRScanScreen> {
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//   late QRViewController controller;
//   Barcode? result;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('QR Scanner'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             flex: 5,
//             child: QRView(
//               key: qrKey,
//               onQRViewCreated: _onQRViewCreated,
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Center(
//               child: (result != null)
//                   ? Text('Result: ${result!.code}')
//                   : Text('Scan a QR code'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   void _onQRViewCreated(QRViewController controller) {
//     this.controller = controller;
//     controller.scannedDataStream.listen((scanData) {
//       setState(() {
//         result = scanData;
//       });
//     });
//   }
// }
