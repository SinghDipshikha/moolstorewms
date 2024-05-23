import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';

class CommanTextField extends StatelessWidget {
  bool? obscureText;
  String? labelText;
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? hintText;
  int? maxLength;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  List<TextInputFormatter>? inputFormatters;
  EdgeInsetsGeometry? padding;
  TextEditingController? controller;
  void Function(String)? onChanged;
  TextCapitalization? textCapitalization;
  double? borderRadius;
  int? maxLines;
  bool isNumber;

  CommanTextField({
    super.key,
    this.labelText,
    this.hintText,
    this.textCapitalization,
    this.borderRadius,
    this.obscureText,
    this.suffixIcon,
    this.onChanged,
    this.prefixIcon,
    this.controller,
    this.maxLength,
    this.maxLines,
    this.inputFormatters,
    this.keyboardType,
    this.padding,
    this.validator,
    this.isNumber = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints:
            context.isPhone ? null : const BoxConstraints(maxWidth: 500),
        child:

            // context.isPhone
            //     ?

            Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints:
                  context.isPhone ? null : const BoxConstraints(maxWidth: 100),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "$labelText",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFACACAC),
                      ),
                    ),
                    TextSpan(
                      text: '*',
                      style: TextStyles.bodyMedium(context)
                          .copyWith(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            Container(
              height: 40.0,
              decoration: const BoxDecoration(
                  color: Color(0xFFFAF9FF),
                  borderRadius: BorderRadius.all(Radius.circular(25.7))),
              child: TextFormField(
                maxLines: maxLines,
                textCapitalization:
                    textCapitalization ?? TextCapitalization.none,
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                onChanged: onChanged,
                onFieldSubmitted: (value) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                keyboardType: keyboardType,
                controller: controller,
                validator: validator,
                inputFormatters:
                    isNumber ? [FilteringTextInputFormatter.digitsOnly] : [],
                obscureText: obscureText ?? false,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 8),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 27, 23, 251), width: 0.4),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 169, 153, 246),
                          width: 0.2),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  hintText: hintText,
                  hintStyle: const TextStyle(
                    color: Color(0xFFACACAC),
                    fontSize: 14,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                  ),
                  suffixIcon: suffixIcon,
                  prefixIcon: prefixIcon,
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 0.1),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  errorStyle: const TextStyle(fontSize: 18),
                ),
              ).paddingSymmetric(
                vertical: 0,
                horizontal: 4,
              ),
            ),
          ],
        )
        // : Row(
        //     children: [
        //       SizedBox(
        //         width: 220,
        //         child: Text.rich(
        //           overflow: TextOverflow.ellipsis,
        //           TextSpan(
        //             children: [
        //               TextSpan(
        //                 text: "$labelText",
        //                 style: const TextStyle(
        //                   fontSize: 16,
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               ),
        //               TextSpan(
        //                 text: '*',
        //                 style: TextStyles.bodyMedium(context)
        //                     .copyWith(color: Colors.red),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //       //  Gap(20),
        //       Expanded(
        //         child: Container(
        //           decoration: ShapeDecoration(
        //             color: Colors.white,
        //             shape: RoundedRectangleBorder(
        //               borderRadius:
        //                   BorderRadius.circular(borderRadius ?? 4.82),
        //             ),
        //             shadows: const [
        //               BoxShadow(
        //                 color: Color(0x0C000000),
        //                 blurRadius: 4,
        //                 offset: Offset(3, 4),
        //                 spreadRadius: 0,
        //               )
        //             ],
        //           ),
        //           child: TextFormField(
        //             //  expands: true,
        //             maxLines: maxLines,
        //             textCapitalization:
        //                 textCapitalization ?? TextCapitalization.none,
        //             onTapOutside: (event) {
        //               FocusManager.instance.primaryFocus?.unfocus();
        //             },
        //             onChanged: onChanged,
        //             onFieldSubmitted: (value) {
        //               FocusManager.instance.primaryFocus?.unfocus();
        //             },
        //             keyboardType: keyboardType,
        //             controller: controller,
        //             validator: validator,
        //             inputFormatters: inputFormatters,
        //             obscureText: obscureText ?? false,
        //             decoration: InputDecoration(
        //               hintText: hintText,
        //               hintStyle: const TextStyle(color: Colors.grey),
        //               suffixIcon: suffixIcon,
        //               prefixIcon: prefixIcon,
        //               border: InputBorder.none,
        //               errorStyle: const TextStyle(fontSize: 12),
        //             ),
        //           ).paddingSymmetric(
        //             vertical: 2,
        //             horizontal: 6,
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),

        );
  }
}

class CommanTextFieldForDocuments extends StatelessWidget {
  bool? obscureText;
  String? labelText;
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? hintText;

  int? maxLength;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  List<TextInputFormatter>? inputFormatters;
  EdgeInsetsGeometry? padding;
  TextEditingController? controller;
  void Function(String)? onChanged;
  TextCapitalization? textCapitalization;
  double? borderRadius;
  int? maxLines;

  CommanTextFieldForDocuments({
    super.key,
    this.labelText,
    this.hintText,
    this.textCapitalization,
    this.borderRadius,
    this.obscureText,
    this.suffixIcon,
    this.onChanged,
    this.prefixIcon,
    this.controller,
    this.maxLength,
    this.maxLines,
    this.inputFormatters,
    this.keyboardType,
    this.padding,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints:
            context.isPhone ? null : const BoxConstraints(maxWidth: 500),
        child:

            // context.isPhone
            //     ?

            Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints:
                  context.isPhone ? null : const BoxConstraints(maxWidth: 100),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "$labelText",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFACACAC),
                      ),
                    ),
                    TextSpan(
                      text: '*',
                      style: TextStyles.bodyMedium(context)
                          .copyWith(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            Container(
                height: 40.0,
                decoration: const BoxDecoration(
                    color: Color(0xFFFAF9FF),
                    borderRadius: BorderRadius.all(Radius.circular(25.7))),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.download, color: Color(0xFF5A57FF)),
                    Text(
                      'Browse',
                      style: TextStyle(
                        color: Color(0xFF5A57FF),
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        //height: 0,
                      ),
                    ),
                  ],
                )),
          ],
        ));
  }
}
