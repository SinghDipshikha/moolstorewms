// import 'package:flutter/material.dart';

// class QRViewScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _QRViewExampleState();
// }

// class _QRViewExampleState extends State<QRViewScreen> {
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//   QRViewController? controller;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('QR Code Scanner')),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             flex: 5,
//             child: QRView(
//               key: qrKey,
//               onQRViewCreated: _onQRViewCreated,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _onQRViewCreated(QRViewController controller) {
//     this.controller = controller;
//     controller.scannedDataStream.listen((scanData) {
//       // Do something with the scan data
//       print('Scanned data: ${scanData.code}');
//       // You can navigate to a new screen or display the scanned data in a dialog
//     });
//   }

//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
// }
