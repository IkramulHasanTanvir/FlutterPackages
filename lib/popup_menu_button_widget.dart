import 'package:flutter/material.dart';

class PopupMenuButtonWidget extends StatefulWidget {
  const PopupMenuButtonWidget({super.key});

  @override
  State<PopupMenuButtonWidget> createState() => _PopupMenuButtonWidgetState();
}

class _PopupMenuButtonWidgetState extends State<PopupMenuButtonWidget> {

  String _selectedOption = "None";


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                _selectedOption = value;
              });
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: "Option 1", child: Text("Option 1")),
              const PopupMenuItem(value: "Option 2", child: Text("Option 2")),
              const PopupMenuItem(value: "Option 3", child: Text("Option 3")),
            ],
            child: ElevatedButton(
              onPressed: null,
              child: Text(_selectedOption),
            ),
          ),
          const SizedBox(height: 20),
          Text("Selected: $_selectedOption", style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }

}
