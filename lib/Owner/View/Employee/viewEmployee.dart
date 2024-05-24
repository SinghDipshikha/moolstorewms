import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
import 'package:moolwmsstore/Owner/Model/employee.dart';

class ViewEmployee extends StatefulWidget {
  var employeeId;
  Employee? owner;
  ViewEmployee({super.key, this.employeeId, this.owner});

  @override
  State<ViewEmployee> createState() => _ViewEmployeeState();
}

class _ViewEmployeeState extends State<ViewEmployee> {
  bool loading = true;
  @override
  void initState() {
    Get.find<OwnerController>()
        .apiClient
        .getData("hr/staffListById/${widget.employeeId}")
        .then((v) {
      if (v.data["message"] == "Staff Data Retrieved Successfully!") {
        v.data["result"][0];
      }
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.owner != null
          ? Center(
              child: Text(widget.owner?.toJson().toString() ?? ""),
            )
          : loading
              ? const Center(
                  child: SpinKitDoubleBounce(
                    color: Color(0xFF5A57FF),
                  ),
                )
              : const Center(
                  child: Text("asdada"),
                ),
      appBar: AppBar(
        title: Text(
          'View Employ ${widget.employeeId}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
