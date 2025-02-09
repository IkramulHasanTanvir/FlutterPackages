import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget>{
  int _currentStep = 0; // Track the current step

  // List of steps for the Stepper widget
  final List<Step> _steps = [
    const Step(
      title: Text('Step 1'),
      content: Text('This is the first step'),
      isActive: true,
    ),
    const Step(
      title: Text('Step 2'),
      content: Text('This is the second step'),
      isActive: true,
    ),
    const Step(
      title: Text('Step 3'),
      content: Text('This is the third step'),
      isActive: true,
    ),
  ];




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stepper(
        currentStep: _currentStep, // Current step
        onStepTapped: (int step) {
          setState(() {
            _currentStep = step; // Set step on tap
          });
        },
        onStepContinue: () {
          // If not at the last step, move to the next one
          if (_currentStep < _steps.length - 1) {
            setState(() {
              _currentStep++;
            });
          } else {
            // Do something when the last step is reached
          }
        },
        onStepCancel: () {
          // If not at the first step, move to the previous one
          if (_currentStep > 0) {
            setState(() {
              _currentStep--;
            });
          }
        },
        steps: _steps, // Define the steps
      ),
    );
  }
}

