import 'package:flutter/material.dart';

class Blocked extends StatelessWidget {
  const Blocked({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Account deactivated"),
      ),
    );
  }
}
