import 'package:flutter/material.dart';
import 'package:flutter_packages/home_screen.dart';

class FlutterPackages extends StatelessWidget {
  const FlutterPackages({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
