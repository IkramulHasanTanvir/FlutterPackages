import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: AvatarGlow(
          duration: const Duration(milliseconds: 500),
          glowRadiusFactor: 0.9,
          glowCount: 2,
          glowColor: Colors.deepPurple,
          child: const Icon(Icons.favorite,size: 44,),
        ),
      ),
    );
  }
}
