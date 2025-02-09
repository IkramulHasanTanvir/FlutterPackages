import 'package:flutter/material.dart';

class CheckboxListTileWidget extends StatefulWidget {
  const CheckboxListTileWidget({super.key});

  @override
  State<CheckboxListTileWidget> createState() =>
      _CheckboxListTileWidgetState();
}

class _CheckboxListTileWidgetState extends State<CheckboxListTileWidget> {
  final List<bool> _isChecked = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _isChecked.length,
      itemBuilder: (context, index) {
        return CheckboxListTile(
          title: Text("Item ${index + 1}"),
          subtitle: Text("Subtitle for Item ${index + 1}"),
          value: _isChecked[index],
          onChanged: (bool? value) {
            setState(() {
              _isChecked[index] = value!;
            });
          },
          secondary: const Icon(Icons.label),
          controlAffinity: ListTileControlAffinity.leading,
        );
      },
    );
  }
}
