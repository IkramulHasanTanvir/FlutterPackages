import 'package:flutter/cupertino.dart';

class CupertinoContextMenuWidget extends StatefulWidget {
  const CupertinoContextMenuWidget({super.key});

  @override
  State<CupertinoContextMenuWidget> createState() => _CupertinoContextMenuWidgetState();
}

class _CupertinoContextMenuWidgetState extends State<CupertinoContextMenuWidget> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoContextMenu(
          actions: [
            CupertinoContextMenuAction(
              child: const Text("Option 1"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoContextMenuAction(
              child: const Text("Option 2"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoContextMenuAction(
              isDestructiveAction: true,
              child: const Text("Delete"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
          child: Image.network(
            'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-980x653.jpg',
            height: 100,
          )),
    );
  }
}
