import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LabourInfoScreen extends StatefulWidget {
  const LabourInfoScreen({
    super.key,
  });

  @override
  State<LabourInfoScreen> createState() => _LabourInfoScreenState();
}

class _LabourInfoScreenState extends State<LabourInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Labour Info',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Gap(20),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  height: 90,
                  decoration: ShapeDecoration(
                    color: const Color(0xCC5A57FF),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const SizedBox(
                    width: 119,
                    height: 27.50,
                    child: Center(
                      child: Text(
                        'Labour In',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.only(right: 30.0, left: 30.0),
                child: Container(
                  width: 358,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFAF9FF),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0x195A57FF)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        const Gap(10),
                        DetailsTile(
                          labelText: 'Full Name',
                          inputValue: "2222",
                        ),
                        DetailsTile(
                          labelText: 'Mobile Number',
                          inputValue: "22",
                        ),
                        const Gap(10),
                        DetailsTile(
                          labelText: 'Labour Type',
                          inputValue: "222",
                        ),
                        const Gap(10),
                        DetailsTile(
                          labelText: 'Gender',
                          inputValue: "2222",
                        ),
                        const Gap(10),
                        DetailsTile(
                          labelText: 'Date & Time',
                          inputValue: "222",
                        ),
                        const Gap(10),
                        DetailsTile(
                          labelText: 'Address',
                          inputValue: "222",
                        ),
                        const Gap(10),
                        DetailsTile(
                          labelText: 'Purpose of Visit',
                          inputValue: "222",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  height: 138,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF5A57FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/aadharCard.png"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Colors.white.withOpacity(0.5),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsTile extends StatefulWidget {
  String? labelText = '';
  String? inputValue = '';
  DetailsTile(
      {super.key, required String labelText, required String inputValue});

  @override
  State<DetailsTile> createState() => _DetailsTileState();
}

class _DetailsTileState extends State<DetailsTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(maxWidth: 500),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 100),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  widget.labelText!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFACACAC),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            Container(
                height: 40.0,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25.7))),
                child: Text(widget.inputValue!)),
          ],
        ));
  }
}
