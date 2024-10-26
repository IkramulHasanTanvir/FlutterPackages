import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: Text('hy Flutter',style: GoogleFonts.actor(textStyle: const TextStyle(fontSize: 44,fontWeight: FontWeight.bold),),)
      ),
    );
  }
}
