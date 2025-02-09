import 'package:flutter/material.dart';

class AutocompleteWidget extends StatefulWidget {
  const AutocompleteWidget({super.key});

  @override
  State<AutocompleteWidget> createState() => _AutocompleteWidgetState();
}

class _AutocompleteWidgetState extends State<AutocompleteWidget> {

  final List<String> _cities = [
    'New York', 'Los Angeles', 'Chicago', 'Houston', 'Phoenix', 'Philadelphia',
    'San Antonio', 'San Diego', 'Dallas', 'San Jose'
  ];


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Autocomplete<String>(
        optionsBuilder: (TextEditingValue textEditingValue) {
          return _cities.where((city) => city.toLowerCase().contains(textEditingValue.text.toLowerCase()));
        },
        fieldViewBuilder: (context, controller, focusNode, onFieldSubmitted) {
          return TextField(
            controller: controller,
            focusNode: focusNode,
            decoration: const InputDecoration(
              labelText: 'City',
              border: OutlineInputBorder(),
            ),
          );
        },
        optionsViewBuilder: (context, onSelected, options) {
          return Material(
            child: ListView.builder(
              itemCount: options.length,
              itemBuilder: (context, index) {
                final String option = options.elementAt(index);
                return ListTile(
                  title: Text(option),
                  onTap: () => onSelected(option),
                );
              },
            ),
          );
        },
      ),
    );
  }

}
