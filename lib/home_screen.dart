import 'package:flutter/material.dart';
import 'package:flutter_packages/indexed_stack_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: const IndexedStackWidget(),
    );
  }
}
