import 'package:flutter/material.dart';

class ChoiceChipWidget extends StatefulWidget {
  const ChoiceChipWidget({super.key});

  @override
  State<ChoiceChipWidget> createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget>{

  String question = "What is the capital of France?";
  List<String> options = ["Berlin", "Madrid", "Paris", "Rome"];

  // The correct answer
  String correctAnswer = "Paris";

  // The selected option
  String selectedAnswer = "";

  // Score
  String result = "";


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            question,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10.0, // Space between chips
            children: options.map((option) {
              return ChoiceChip(
                label: Text(option),
                selected: selectedAnswer == option,
                selectedColor: Colors.blue,
                backgroundColor: Colors.grey[300],
                onSelected: (selected) {
                  setState(() {
                    selectedAnswer = option;
                    // Check the selected answer
                    if (selectedAnswer == correctAnswer) {
                      result = "Correct!";
                    } else {
                      result = "Incorrect. Try again!";
                    }
                  });
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          if (result.isNotEmpty)
            Text(
              result,
              style: TextStyle(
                  fontSize: 20,
                  color: result == "Correct!" ? Colors.green : Colors.red),
            ),
        ],
      ),
    );
  }

}
