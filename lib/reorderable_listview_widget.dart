import 'package:flutter/material.dart';

class ReorderableListViewWidget extends StatefulWidget {
  const ReorderableListViewWidget({super.key});

  @override
  State<ReorderableListViewWidget> createState() =>
      _ReorderableListViewWidgetState();
}

class _ReorderableListViewWidgetState extends State<ReorderableListViewWidget> {
  List<int> items = List.generate(30, (int index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      children: List.generate(
        items.length,
        (index) => ListTile(
          key: ValueKey(items[index]),
          title: Text(items[index].toString()),
          tileColor: items[index].isOdd ? Colors.grey[200] : Colors.grey.shade700,
          trailing: const Icon(Icons.drag_handle),
        ),
      ),
      onReorder: (oldIndex, newIndex) {
        setState(() {
          if (newIndex > oldIndex) newIndex--;
          final item = items.removeAt(oldIndex);
          items.insert(newIndex, item);
        });
      },
    );
  }
}
