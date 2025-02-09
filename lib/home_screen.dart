import 'package:flutter/material.dart';
import 'package:flutter_packages/custom_long_press_draggable.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomLongPressDraggable(),
    );
  }
}
