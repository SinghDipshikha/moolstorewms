import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonAppBar.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonButtons.dart';

class DemoScreenForNavigations extends StatefulWidget {
  const DemoScreenForNavigations({super.key});

  @override
  State<DemoScreenForNavigations> createState() =>
      _DemoScreenForNavigationsState();
}

class _DemoScreenForNavigationsState extends State<DemoScreenForNavigations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CommonAppBar(
        title: '',
        actions: [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(20),
            CommonSubmitButton(
              title: 'HR',
            ),
            const Gap(20),
            CommonSubmitButton(
              title: 'Sales',
            ),
            const Gap(20),
            CommonSubmitButton(
              title: 'Owner',
            ),
            const Gap(20),
            CommonSubmitButton(
              title: 'Plant Manager',
            ),
            const Gap(20),
            CommonSubmitButton(
              title: 'Security Gaurd',
            ),
            const Gap(20),
            CommonSubmitButton(
              title: 'Dock Supervisor',
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
