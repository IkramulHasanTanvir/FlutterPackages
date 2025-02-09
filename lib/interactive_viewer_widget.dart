import 'package:flutter/material.dart';

class InteractiveViewerWidget extends StatelessWidget {
  const InteractiveViewerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(double.infinity),
          child: Container(
        color: Colors.amber,
        height: 200,width: 200,)),
    );
  }
}
