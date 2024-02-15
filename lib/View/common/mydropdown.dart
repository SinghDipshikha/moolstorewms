import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class MyDropdown extends StatelessWidget {
  List<String> list;
  String? selectedValue;
  String? labelText;
  bool shadow;
  // Widget? y = Container();
  void Function(String?)? onChanged;
  MyDropdown({
    super.key,
    required this.list,
    required this.selectedValue,
    required this.onChanged,
    required this.labelText,
    this.shadow = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 16, left: 10),
      // decoration: BoxDecoration(
      //     border: Border.all(
      //       color: const Color.fromARGB(255, 214, 214, 214),
      //     ),
      //     color: const Color.fromARGB(255, 246, 246, 246),
      //     borderRadius: BorderRadius.circular(8.0),
      //     boxShadow: ColorConstants.boxShadow(context)),
      child: DropdownButton2<String>(
        // customButton: Image.asset(
        //   "assets/icons/down.png",
        //   height: 20,
        //   width: 20,
        // ),
        //isDense: true,
        underline: Container(),
        alignment: Alignment.centerLeft,
        // isDense: true,
        isExpanded: false,
        hint: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            labelText ?? '',
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
                        )),
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: onChanged,
        // customButton: IconButton(
        //   icon: const Icon(Icons.arrow_drop_down_rounded),
        //   onPressed: () {},
        // ),
        dropdownStyleData: DropdownStyleData(
          direction: DropdownDirection.right,
          maxHeight: 1000,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            // color: Colors.white,
          ),
          offset: const Offset(-20, 0),
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(40),
            thickness: MaterialStateProperty.all(6),
            thumbVisibility: MaterialStateProperty.all(true),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          // height: 40,

          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        ),
      ),
    );
  }
}
