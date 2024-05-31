import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/Security%20Guard/View/cc.dart';
import 'package:moolwmsstore/utils/appConstants.dart';

class DateRangeButtton extends StatefulWidget {
  DateTime? endDate;
  DateTime? startDate;
  double? height;
  double? width;
  dynamic Function(DateTime, DateTime) onApplyClick;
  DateRangeButtton(
      {super.key,
      this.startDate,
      this.endDate,
      required this.onApplyClick,
      this.height,
      this.width});

  @override
  State<DateRangeButtton> createState() => _DateRangeButttonState();
}

class _DateRangeButttonState extends State<DateRangeButtton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          showCustomDateRangePicker(
            context,
            dismissible: true,
            minimumDate: DateTime.now().subtract(const Duration(days: 30)),
            maximumDate: DateTime.now(),
            endDate: widget.endDate,
            startDate: widget.startDate,
            backgroundColor: Colors.black,
            primaryColor: const Color(0xFF6A68FF),
            onApplyClick: (start, end) {
              setState(() {
                widget.startDate = start;
                widget.endDate = end;
              });
              widget.onApplyClick(start, end);
            },
            onCancelClick: () {},
          );
        },
        child: Container(
          width: widget.width,
          height: widget.height,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0x195A57FF)),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Row(
            children: [
              const Gap(8),
              const Icon(
                Icons.arrow_back_ios,
                color: Color(0xFFACACAC),
                size: 20,
              ),
              Expanded(
                child: Text(
                  "${widget.startDate == null ? "   --   " : AppConstants.dayMonrhormatter.format(widget.startDate!)} - ${widget.endDate == null ? "  --  " : AppConstants.dayMonrhormatter.format(widget.endDate!)}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 1,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFACACAC),
                size: 20,
              ),
              const Gap(8),
            ],
          ),
        ));
  }
}
