import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/widgets/commonAppBar.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/widgets/commonTextField.dart';

import '../widgets/commonButtons.dart';

class VerifyTicketScreen extends StatefulWidget {
  const VerifyTicketScreen({super.key});

  @override
  State<VerifyTicketScreen> createState() => _VerifyTicketScreenState();
}

class _VerifyTicketScreenState extends State<VerifyTicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppBar(
        title: 'Verify',
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Gap(10),
              Container(
                width: 350,
                height: 42,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF7F7F7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'PO No. : 12345',
                      style: TextStyle(
                        color: Color(0xFF595959),
                        fontSize: 14,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    Text(
                      'Ticket ID : 54321',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF595959),
                        fontSize: 14,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),
              const Gap(10),
              Container(
                width: 350,
                height: 225,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF7F7F7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(20),
                    const Center(
                      child: Text(
                        'Product Information',
                        style: TextStyle(
                          color: Color(0xFF161616),
                          fontSize: 15,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          // textDecoration: TextDecoration.underline,
                          height: 0.14,
                        ),
                      ),
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CommanTextFieldTickets(
                          labelText: 'Product Name',
                          hintText: 'Jackhammers',
                        ),
                        const CommonApproveAndDeclineButton()
                      ],
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CommanTextFieldTickets(
                          labelText: 'Quantity',
                          hintText: '1500',
                        ),
                        const CommonApproveAndDeclineButton()
                      ],
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CommanTextFieldTickets(
                          labelText: 'Units',
                          hintText: '10',
                        ),
                        const CommonApproveAndDeclineButton()
                      ],
                    )
                  ],
                ),
              ),
              const Gap(10),
              const Gap(10),
              Container(
                width: 350,
                height: 225,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF7F7F7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(20),
                    const Center(
                      child: Text(
                        'Product Information',
                        style: TextStyle(
                          color: Color(0xFF161616),
                          fontSize: 15,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          // textDecoration: TextDecoration.underline,
                          height: 0.14,
                        ),
                      ),
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CommanTextFieldTickets(
                          labelText: 'Product Name',
                          hintText: 'Jackhammers',
                        ),
                        const CommonApproveAndDeclineButton()
                      ],
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CommanTextFieldTickets(
                          labelText: 'Quantity',
                          hintText: '1500',
                        ),
                        const CommonApproveAndDeclineButton()
                      ],
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CommanTextFieldTickets(
                          labelText: 'Units',
                          hintText: '10',
                        ),
                        const CommonApproveAndDeclineButton()
                      ],
                    )
                  ],
                ),
              ),
              const Gap(10),
              Container(
                width: 350,
                height: 200,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF7F7F7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(30),
                    const Center(
                      child: Text(
                        'Vehicle Information',
                        style: TextStyle(
                          color: Color(0xFF161616),
                          fontSize: 15,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          // textDecoration: TextDecoration.underline,
                          height: 0.14,
                        ),
                      ),
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CommanTextFieldTickets(
                          labelText: 'Vehicle Number',
                          hintText: 'MH 01 AB 1234',
                        ),
                        const CommonApproveAndDeclineButton()
                      ],
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CommanTextFieldTickets(
                          labelText: 'Driver Name',
                          hintText: 'Christopher',
                        ),
                        const CommonApproveAndDeclineButton()
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(20),
              CommonCheckInButton(
                title: 'Vehicle In',
              ),
              const Gap(20),
              CommonCheckOutButtons(
                title: 'Vehicle Out',
              ),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
