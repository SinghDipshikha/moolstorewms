import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/person.dart';

class PersonInfoScreen extends StatefulWidget {
  Person personDetails;
  PersonInfoScreen({super.key, required this.personDetails});

  @override
  State<PersonInfoScreen> createState() => _PersonInfoScreenState();
}

class _PersonInfoScreenState extends State<PersonInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Person Info',
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
              Container(
                width: 358,
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
                      'Person In',
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
                          inputValue:
                              '${widget.personDetails.person_name}' ?? "",
                        ),
                        const Gap(10),
                        DetailsTile(
                          labelText: 'Visitor Mobile Number',
                          inputValue:
                              '${widget.personDetails.person_phone}' ?? "",
                        ),
                        const Gap(10),
                        DetailsTile(
                          labelText: 'Date & Time',
                          inputValue:
                              '${widget.personDetails.created_at}' ?? "",
                        ),
                        const Gap(10),
                        DetailsTile(
                          labelText: 'Status',
                          inputValue: '${widget.personDetails.status}' ?? "",
                        ),
                        const Gap(10),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsTile extends StatefulWidget {
  String? labelText;
  var inputValue;
  DetailsTile({super.key, required this.labelText, required this.inputValue});

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
              constraints: const BoxConstraints(maxWidth: 200),
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
                width: double.infinity,
                height: 40.0,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(widget.inputValue!),
                )),
          ],
        ));
  }
}