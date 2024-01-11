import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
@RoutePage()
class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "labelMedium",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                "displayLarge",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                "displayMedium",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                "displaySmall",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                "headlineMedium",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                "headlineSmall",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                "titleLarge",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "titleMedium",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "bodyLarge",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "bodyMedium",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                "bodySmall",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                "labelLarge",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                "titleSmall",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                "labelSmall",
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ]),
      ),
    );
  }
}
