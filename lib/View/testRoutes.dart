import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';

@RoutePage()
class TestRoutes extends StatelessWidget {
  const TestRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

@RoutePage()
class TestRoutespage extends StatefulWidget {
  const TestRoutespage({super.key});

  @override
  State<TestRoutespage> createState() => _TestRoutespageState();
}

class _TestRoutespageState extends State<TestRoutespage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool showWebDrawr = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Wrap(
          runSpacing: 20,
          spacing: 20,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(const Splash());
                },
                child: const Text("Splash screen")),
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(const Chooselanguage());
                },
                child: const Text("Choose Language")),
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(const PhoneSign());
                },
                child: const Text("Phone login")),
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(const OtpRoute());
                },
                child: const Text("Otp")),
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(const SelectRole());
                },
                child: const Text("Select Role")),
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(const Welcome());
                },
                child: const Text("Welcome screen")),
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(const OwnerDashboard());
                },
                child: const Text("OwnerDashboard")),
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(const AddWarehouse());
                },
                child: const Text("Add Warehouse")),
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(const WarehouseList());
                },
                child: const Text("Warhouse List")),
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(ViewWarehouseDetails());
                },
                child: const Text("ViewWarehouseDetails")),
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(const AssetsList());
                },
                child: const Text("Assets List")),
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(const AssetEntry());
                },
                child: const Text("Assets Entry")),
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(const AddChamber());
                },
                child: const Text("Add chamber")),
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(const ChamberList());
                },
                child: const Text("Chamber List")),
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(const AddChamber());
                },
                child: const Text("Add chamber")),
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(const ChamberView());
                },
                child: const Text("chamber view")),
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(const AddEmployeePersonalDetails());
                },
                child: const Text("Add Employee")),
          ],
        ),
      ),
    );
  }
}
