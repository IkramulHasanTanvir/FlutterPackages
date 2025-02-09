import 'package:flutter/material.dart';

class IgnorePointerWidget extends StatefulWidget {
  const IgnorePointerWidget({super.key});

  @override
  State<IgnorePointerWidget> createState() => _IgnorePointerWidgetState();
}

class _IgnorePointerWidgetState extends State<IgnorePointerWidget>{

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
            },
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Clickable Button'),
            ),
          ),
          const SizedBox(height: 20),
          IgnorePointer(
            ignoring: true, // Disable interactions for this widget
            child: GestureDetector(
              onTap: () {
              },
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Button (Interaction Disabled)'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
            },
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Clickable Button'),
            ),
          ),
        ],
      ),
    );
  }
}

