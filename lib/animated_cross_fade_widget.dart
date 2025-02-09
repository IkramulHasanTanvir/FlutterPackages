import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() => _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {

  bool _isFirst = true;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedCrossFade(
            firstChild: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: const Center(child: Text("First", style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
            secondChild: Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: const Center(child: Text("Second", style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
            crossFadeState: _isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isFirst = !_isFirst;
              });
            },
            child: const Text("Toggle"),
          ),
        ],
      ),
    );
  }

}
