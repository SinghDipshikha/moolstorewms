import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';

class OwnerSwitchRoleButton extends StatelessWidget {
const OwnerSwitchRoleButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  GetBuilder<OwnerController>(builder: (ownerController) {
              return DropdownButtonFormField2<String>(
                //  isExpanded: true,

                decoration: InputDecoration(
                  // Add Horizontal padding using menuItemStyleData.padding so it matches
                  // the menu padding when button's width is not specified.
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  // Add more decoration..
                ),
                hint: const Text('Switch Role',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      //height: 0,
                      letterSpacing: -0.64,
                    )),
                items: ownerController.otherRoles.map((item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        //height: 0,
                        letterSpacing: -0.64,
                      ),
                    ),
                  );
                }).toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Switch Role';
                  }
                  return null;
                },
                onChanged: (value) {
                  if (value != null) {
                    ownerController.switchRole(value);
                  }
                  // Logger().i(value);
                  //Do something when selected item is changed.
                },
                onSaved: (value) {
                  // selectedValue = value.toString();
                },
                buttonStyleData: const ButtonStyleData(
                  //decoration: BoxDecoration(color: Colors.white),
                  overlayColor: MaterialStatePropertyAll(Colors.white),
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                  iconSize: 24,
                ),
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ).paddingSymmetric(horizontal: 12, vertical: 12);
            });
  }
}