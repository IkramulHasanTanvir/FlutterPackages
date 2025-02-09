import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  const AnimatedIconWidget({super.key});

  @override
  State<AnimatedIconWidget> createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget> with TickerProviderStateMixin{

  bool _isPlaying = false;



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedIcon(
            icon: _isPlaying ? AnimatedIcons.play_pause : AnimatedIcons.pause_play,
            progress: Tween<double>(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(
                parent: AnimationController(
                  duration: const Duration(milliseconds: 500),
                  vsync: this,
                )..forward(),
                curve: Curves.easeInOut,
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isPlaying = !_isPlaying;
              });
            },
            child: Text(_isPlaying ? "Pause" : "Play"),
          ),
        ],
      ),
    );
  }

}
