import 'package:flutter/material.dart';
import 'package:flutter_packages/interactive_viewer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: InteractiveViewerWidget(),
    );
  }
}
