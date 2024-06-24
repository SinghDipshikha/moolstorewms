import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DocumentCommonContainer extends StatelessWidget {
  String? labelText;
  String? documentType;
  TextEditingController? controller;
  void Function(String)? onChanged;
  TextCapitalization? textCapitalization;
  double? borderRadius;

  DocumentCommonContainer({
    super.key,
    this.labelText,
    this.documentType,
    this.borderRadius,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: context.isPhone ? null : const BoxConstraints(maxWidth: 500),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 220,
            child: Text.rich(
              overflow: TextOverflow.ellipsis,
              TextSpan(
                children: [
                  TextSpan(
                    text: "$labelText",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const TextSpan(
                    text: '*',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          ),
          //  Gap(20),
          Container(
            constraints:
                context.isPhone ? null : const BoxConstraints(maxWidth: 500),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 4.82),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x0C000000),
                  blurRadius: 4,
                  offset: Offset(3, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 100,
                  height: 60,
                  child: Image.asset('assets/icons/gallery_icon.png'),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        color: Colors.white,
                        child: Image.asset(
                          'assets/icons/document_icon.png',
                        ),
                      ),
                      Text(
                        '$documentType',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ).paddingAll(10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
