import 'package:flutter/material.dart';

class CustomLongPressDraggable extends StatefulWidget {
  const CustomLongPressDraggable({super.key});

  @override
  State<CustomLongPressDraggable> createState() => _CustomLongPressDraggableState();
}

class _CustomLongPressDraggableState extends State<CustomLongPressDraggable> {
  Offset _offset = const Offset(200, 250);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            Positioned(
              top: _offset.dy,
              left: _offset.dx,
              child: LongPressDraggable(
                onDragEnd: (details) {
                  double adjustment =
                      MediaQuery.sizeOf(context).height - constraints.maxHeight;
                  _offset =
                      Offset(details.offset.dx, details.offset.dy - adjustment);
                  setState(() {});
                },
                feedback: Image.network(
                    'https://www.crushpixel.com/big-static7/preview4/take-photo-164370.jpg',
                    height: 200,
                    color: Colors.amber,
                    colorBlendMode: BlendMode.colorBurn),
                child: Image.network(
                  'https://www.crushpixel.com/big-static7/preview4/take-photo-164370.jpg',
                  height: 200,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
