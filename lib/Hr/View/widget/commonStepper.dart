import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';

class CommonStepper extends StatefulWidget {
  const CommonStepper({super.key});

  @override
  State<CommonStepper> createState() => _CommonStepperState();
}

class _CommonStepperState extends State<CommonStepper> {
  int activeStep = 0;
  int activeStep2 = 0;
  int reachedStep = 0;
  int upperBound = 5;
  double progress = 0.2;
  Set<int> reachedSteps = <int>{0, 2, 4, 5};

  void increaseProgress() {
    if (progress < 1) {
      setState(() => progress += 0.2);
    } else {
      setState(() => progress = 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.purple,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          backgroundColor: Colors.white,
        ),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 35),
                color: Colors.grey.shade200,
                clipBehavior: Clip.none,
                child: EasyStepper(
                  activeStep: activeStep,
                  lineStyle: const LineStyle(
                    lineLength: 20,
                    lineSpace: 0,
                    lineType: LineType.normal,
                    defaultLineColor: Colors.white,
                    finishedLineColor: Colors.deepPurple,
                    lineThickness: 1.5,
                  ),
                  activeStepTextColor: Colors.black87,
                  finishedStepTextColor: Colors.black87,
                  titlesAreLargerThanSteps: true,
                  internalPadding: 0,
                  showLoadingAnimation: false,
                  stepRadius: 8,
                  showStepBorder: false,
                  steps: [
                    EasyStep(
                      enabled: 0 <= activeStep + 1,
                      customStep: CircleAvatar(
                        radius: 8,
                        backgroundColor: 0 <= activeStep
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      // topTitle: 0 % 2 == 1,
                      // // title: "Awaiting authorization",
                      // customTitle: const SizedBox(
                      //   width: double.infinity,
                      //   child: Text("Awaiting authorization",
                      //       textAlign: TextAlign.center),
                      // )
                    ),
                    EasyStep(
                      enabled: 1 <= activeStep + 1,
                      customStep: CircleAvatar(
                        radius: 8,
                        backgroundColor: 1 <= activeStep
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      // topTitle: 1 % 2 == 1,
                      // // title: "Authorized",
                      // customTitle: const SizedBox(
                      //   width: double.infinity,
                      //   child:
                      //       Text("Authorized", textAlign: TextAlign.center),
                      // )
                    ),
                    EasyStep(
                      enabled: 2 <= activeStep + 1,
                      customStep: CircleAvatar(
                        radius: 8,
                        backgroundColor: 2 <= activeStep
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      // topTitle: 2 % 2 == 1,
                      // title: "Received",
                      // customTitle: const SizedBox(
                      //   width: double.infinity,
                      //   child:
                      //       Text("Received", textAlign: TextAlign.center),
                      // )
                    ),
                    EasyStep(
                      enabled: 3 <= activeStep + 1,
                      customStep: CircleAvatar(
                        radius: 8,
                        backgroundColor: 3 <= activeStep
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      // topTitle: 3 % 2 == 1,
                      // title: "Under processing",
                      // customTitle: const SizedBox(
                      //   width: double.infinity,
                      //   child: Text("Under processing",
                      //       textAlign: TextAlign.center),
                      // )
                    ),
                    EasyStep(
                      enabled: 4 <= activeStep + 1,
                      customStep: CircleAvatar(
                        radius: 8,
                        backgroundColor: 4 <= activeStep
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      // topTitle: 4 % 2 == 1,
                      // title: "Awaiting customer approval",
                      // customTitle: const SizedBox(
                      //   width: double.infinity,
                      //   child: Text("Awaiting customer approval",
                      //       textAlign: TextAlign.center),
                      // )
                    ),
                    EasyStep(
                      enabled: 5 <= activeStep + 1,
                      customStep: CircleAvatar(
                        radius: 8,
                        backgroundColor: 5 <= activeStep
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      // topTitle: 5 % 2 == 1,
                      // title: "Approved by customer personally",
                      // customTitle: const SizedBox(
                      //   width: double.infinity,
                      //   child: Text("Approved by customer personally",
                      //       textAlign: TextAlign.center),
                      // )
                    ),
                    EasyStep(
                      enabled: 6 <= activeStep + 1,
                      customStep: CircleAvatar(
                        radius: 8,
                        backgroundColor: 6 <= activeStep
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      // topTitle: 6 % 2 == 1,
                      // title: "Confirmed",
                      // customTitle: const SizedBox(
                      //   width: double.infinity,
                      //   child:
                      //       Text("Confirmed", textAlign: TextAlign.center),
                      // )
                    ),
                  ],
                  onStepReached: (index) => setState(() => activeStep = index),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: increaseProgress),
      ),
    );
  }

  /// Returns the previous button.
  Widget _previousStep(StepEnabling enabling) {
    return IconButton(
      onPressed: () {
        if (activeStep2 > 0) {
          setState(() => enabling == StepEnabling.sequential
              ? --activeStep2
              : activeStep2 =
                  reachedSteps.lastWhere((element) => element < activeStep2));
        }
      },
      icon: const Icon(Icons.arrow_back_ios),
    );
  }
}

enum StepEnabling { sequential, individual }
