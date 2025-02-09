import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget({super.key});

  @override
  State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget>{

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ExpansionTile(
          title: Text('Section 1'),
          leading: Icon(Icons.folder),
          children: [
            ListTile(title: Text('Item 1 in Section 1')),
          ],
        ),
        ExpansionTile(
          title: Text('Section 2'),
          leading: Icon(Icons.folder),
          children: [
            ListTile(title: Text('Item 1 in Section 2')),
            ListTile(title: Text('Item 2 in Section 2')),
          ],
        ),
        ExpansionTile(
          title: Text('Section 3'),
          leading: Icon(Icons.folder),
          children: [
            ListTile(title: Text('Item 1 in Section 3')),
            ListTile(title: Text('Item 2 in Section 3')),
            ListTile(title: Text('Item 3 in Section 3')),
          ],
        ),
      ],
    );
  }
}

