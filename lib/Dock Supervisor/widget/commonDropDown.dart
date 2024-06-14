import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';


class CommomDropDown2 extends StatelessWidget {
  List<String> list;
  String? selectedValue;
  String? labelText;
  String? hintText;
  bool shadow;
  // Widget? y = Container();
  void Function(String?)? onChanged;
  CommomDropDown2({
    super.key,
    required this.list,
    required this.selectedValue,
    required this.onChanged,
    required this.labelText,
    required this.hintText,
    this.shadow = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text.rich(
            TextSpan(
              text: "$labelText",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFFACACAC),
              ),
            ),
          ),
        ),
        Container(
          width: 358,
          height: 36,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: ShapeDecoration(
            color: const Color(0xFFFAF9FF),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0x195E57FC)),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: DropdownButton2<String>(
            underline: Container(),
            alignment: Alignment.centerLeft,
            iconStyleData: const IconStyleData(iconEnabledColor: Colors.black),
            //  isDense: true,
            isExpanded: true,
            hint: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                hintText ?? '',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            items: list
                .map((String item) => DropdownMenuItem<String>(
                      alignment: Alignment.centerLeft,
                      value: item,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(item,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFACACAC),
                            )),
                      ),
                    ))
                .toSet()
                .toList(),
            value: selectedValue,
            onChanged: onChanged,
            dropdownStyleData: DropdownStyleData(
              direction: DropdownDirection.right,
              maxHeight: 1000,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
              ),
              offset: const Offset(-20, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: WidgetStateProperty.all(6),
                thumbVisibility: WidgetStateProperty.all(true),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            ),
          ),
        ),
      ],
    );
  }
}
