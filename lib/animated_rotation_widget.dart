import 'package:flutter/material.dart';

class AnimatedRotationWidget extends StatefulWidget {
  const AnimatedRotationWidget({super.key});

  @override
  State<AnimatedRotationWidget> createState() => _AnimatedRotationWidgetState();
}

class _AnimatedRotationWidgetState extends State<AnimatedRotationWidget>{

  double _rotationAngle = 0.0;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedRotation(
            turns: _rotationAngle,  // Rotation angle in "turns"
            duration: const Duration(seconds: 1),  // Animation duration
            child: const Icon(
              Icons.refresh,
              size: 100,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 20),
          // Slider to control the rotation angle
          Slider(
            min: 0.0,
            max: 2.0,
            value: _rotationAngle,
            onChanged: (value) {
              setState(() {
                _rotationAngle = value;
              });
            },
          ),
        ],
      ),
    );
  }

}
