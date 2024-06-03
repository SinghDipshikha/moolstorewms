import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:moolwmsstore/Sales/Model/Visitor/visitorElement.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

class ViewVisitor extends StatefulWidget {
  VisitorElement visitor;
  ViewVisitor({super.key, required this.visitor});

  @override
  State<ViewVisitor> createState() => _ViewVisitorState();
}

class _ViewVisitorState extends State<ViewVisitor> {
  @override
  // void initState() {
  //   Get.find<SalesController>().apiClient.getData(
  //       "visitor/getVisitorDetailsByVisitorId/${widget.visitor.visit_ticket_number}");
  //   // TODO: implement initState
  //   super.initState();
  // }

  DateFormat dateformatter = DateFormat('MMM d, yyyy');
  DateFormat timeformatter = DateFormat('h:mm a');

// WidgetsToImageController to access widget
  WidgetsToImageController controller = WidgetsToImageController();
// to save image bytes of widget
  // Uint8List? bytes;
  // GlobalKey key = GlobalKey();
  // Future shareQRImage() async {
  //   RenderRepaintBoundary boundary =
  //       key.currentContext!.findRenderObject() as RenderRepaintBoundary;
  //   ui.Image image = await boundary.toImage();
  //   ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
  //   Uint8List pngBytes = byteData!.buffer.asUint8List();

  //   const filename = 'qr_code.png';
  //   final tempDir = await getTemporaryDirectory();
  //   final file = XFile('${tempDir.path}/$filename',
  //       bytes: pngBytes, mimeType: "image/jpeg");

  //   Share.shareXFiles([file], text: 'Great picture');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Visitor Details',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: ShapeDecoration(
              color: const Color(0xFFFAF9FF),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/calendar.png",
                  height: 16,
                  color: const Color(0xFF5A57FF),
                ).paddingSymmetric(horizontal: 8),
                Text(
                  dateformatter.format(DateTime.now()),
                  style: const TextStyle(
                    color: Color(0xFF5A57FF),
                    fontSize: 14,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                Image.asset(
                  "assets/icons/Clock Icon (R).png",
                  height: 18,
                  color: const Color(0xFF5A57FF),
                ).paddingSymmetric(horizontal: 8),
                Text(
                  timeformatter.format(DateTime.now()),
                  style: const TextStyle(
                    color: Color(0xFF5A57FF),
                    fontSize: 14,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ).paddingSymmetric(vertical: 12, horizontal: 10),
          ).paddingSymmetric(vertical: 12),
          const Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Visitor Name',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 12,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Gap(4),
                  Text(
                    'Chintan Kadiya',
                    style: TextStyle(
                      color: Color(0xFF353535),
                      fontSize: 18,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  )
                ],
              )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mobile Number',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 12,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Gap(4),
                  Text(
                    '555 123 6789',
                    style: TextStyle(
                      color: Color(0xFF353535),
                      fontSize: 18,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  )
                ],
              )),
            ],
          ).paddingSymmetric(vertical: 12),
          const Text(
            'Purpose of Visit',
            style: TextStyle(
              color: Color(0xFFACACAC),
              fontSize: 12,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
            ),
          ).paddingSymmetric(vertical: 12),
          Container(
            width: double.infinity,
            decoration: ShapeDecoration(
              color: const Color(0xFFFAF9FF),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'For safety reasons, we kindly ask that you wear the provided safety gear, including a hard hat and\nreflective vest, while in the warehouse. If you have any questions or need assistance,\nour staff is here to help.',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 8,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w300,
              ),
            ).paddingSymmetric(vertical: 12, horizontal: 12),
          ),
          const Gap(12),
          const Text(
            'ID Proof',
            style: TextStyle(
              color: Color(0xFFACACAC),
              fontSize: 12,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
            ),
          ).paddingSymmetric(vertical: 12),
          // PinchZoom(
          //   child: Container(
          //     width: double.infinity,
          //     height: 124,
          //     decoration: ShapeDecoration(
          //       image: const DecorationImage(
          //         image: NetworkImage("https://via.placeholder.com/358x124"),
          //         fit: BoxFit.contain,
          //       ),
          //       shape: RoundedRectangleBorder(
          //         side: const BorderSide(
          //           width: 1.50,
          //           strokeAlign: BorderSide.strokeAlignCenter,
          //           color: Color(0xBF5A57FF),
          //         ),
          //         borderRadius: BorderRadius.circular(5),
          //       ),
          //     ),
          //   ),
          // ),

          Center(
            child: WidgetsToImage(
              controller: controller,
              child: QrImageView(
                backgroundColor: Colors.white,
                data:
                    'TYPE : VISITOR , CODE : ${widget.visitor.visit_ticket_number}',
                version: QrVersions.auto,
                size: 230,
                gapless: true,
                dataModuleStyle: const QrDataModuleStyle(
                    dataModuleShape: QrDataModuleShape.circle,
                    color: Colors.black),
                eyeStyle: const QrEyeStyle(
                    eyeShape: QrEyeShape.circle, color: Colors.black),
              ),
            ),
          ).paddingSymmetric(vertical: 12),
          Center(
            child: IconButton(
                onPressed: () {
                  controller.capture();
                },
                icon: const Icon(
                  Icons.share,
                  color: Colors.black,
                )),
          )
        ],
      )).paddingSymmetric(
          horizontal: Dimensions.horizontalBodyPad,
          vertical: Dimensions.vericalBodyPad),
    );
  }
}
