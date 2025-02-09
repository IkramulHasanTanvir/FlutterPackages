import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleWidget extends StatefulWidget {
  const AnimatedDefaultTextStyleWidget({super.key});

  @override
  State<AnimatedDefaultTextStyleWidget> createState() => _AnimatedDefaultTextStyleWidgetState();
}

class _AnimatedDefaultTextStyleWidgetState extends State<AnimatedDefaultTextStyleWidget> {

  bool _isLarge = false;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
            duration: const Duration(seconds: 1),
            style: TextStyle(
              fontSize: _isLarge ? 40 : 20,
              color: _isLarge ? Colors.blue : Colors.red,
              fontWeight: _isLarge ? FontWeight.bold : FontWeight.normal,
            ),
            child: const Text("Flutter Animation"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isLarge = !_isLarge;
              });
            },
            child: const Text("Animate Text"),
          ),
        ],
      ),
    );
  }

}
