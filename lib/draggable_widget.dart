import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  const DraggableWidget({super.key});

  @override
  State<DraggableWidget> createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  Color _targetColor = Colors.grey[300]!;
  bool _isDraggingOver = false;



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Draggable<Color>(
            data: Colors.blue,
            feedback: Container(
              width: 100,
              height: 100,
              color: Colors.blue.withOpacity(0.7),
              child: const Center(
                child: Text("Dragging", style: TextStyle(color: Colors.white)),
              ),
            ),
            childWhenDragging: Container(
              width: 100,
              height: 100,
              color: Colors.grey,
              child: const Center(child: Text("Empty")),
            ),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: const Center(
                child: Text("Drag Me", style: TextStyle(color: Colors.white)),
              ),
            ),
          ),

          const SizedBox(height: 50),

          // Drag Target
          DragTarget<Color>(
            onWillAccept: (data) {
              setState(() {
                _isDraggingOver = true;
              });
              return true;
            },
            onLeave: (data) {
              setState(() {
                _isDraggingOver = false;
              });
            },
            onAccept: (color) {
              setState(() {
                _targetColor = color;
                _isDraggingOver = false;
              });
            },
            builder: (context, candidateData, rejectedData) {
              return Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: _isDraggingOver ? Colors.greenAccent : _targetColor,
                ),
                child: const Center(
                  child: Text(
                    "Drop Here",
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

}
