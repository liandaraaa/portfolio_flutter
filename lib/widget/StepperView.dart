import 'package:flutter/material.dart';

class StepperView extends StatefulWidget {

  final List<Step> steps;

  const StepperView({super.key, required this.steps});

  @override
  State<StepperView> createState() => _StepperViewState();
}

class _StepperViewState extends State<StepperView> {
  int _index = 0;


  @override
  Widget build(BuildContext context) {
    return Stepper(
      controlsBuilder:(BuildContext context, ControlsDetails controls) {
        return const SizedBox.shrink();
      },
      currentStep: _index,
      // onStepCancel: () {
      //   if (_index > 0) {
      //     setState(() {
      //       _index -= 1;
      //     });
      //   }
      // },
      // onStepContinue: () {
      //   if (_index <= 0) {
      //     setState(() {
      //       _index += 1;
      //     });
      //   }
      // },
      onStepTapped: (int index) {
        setState(() {
          _index = index;
        });
      },
      steps:widget.steps
    );
  }
}
