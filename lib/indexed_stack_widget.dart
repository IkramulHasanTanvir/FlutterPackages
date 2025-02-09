import 'package:flutter/material.dart';

class IndexedStackWidget extends StatefulWidget {
  const IndexedStackWidget({super.key});

  @override
  State<IndexedStackWidget> createState() => _IndexedStackWidgetState();
}

class _IndexedStackWidgetState extends State<IndexedStackWidget>{
  int _selectedIndex = 0;

  final List<List<String>> _data = [
    ['Home Item 1', 'Home Item 2', 'Home Item 3'],
    ['Search Item 1', 'Search Item 2', 'Search Item 3'],
    ['Profile Item 1', 'Profile Item 2', 'Profile Item 3'],
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = 0;  // Show Home Screen
                });
              },
              child: const Text('Search'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = 1;  // Show Search Screen
                });
              },
              child: const Text('Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = 2;  // Show Profile Screen
                });
              },
              child: const Text('Home'),
            ),
          ],
        ),
        Expanded(
          child: IndexedStack(
            index: _selectedIndex,  // Show the screen based on selected index
            children: [
              // Home Screen with ListView
              Container(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: _data[0].length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_data[0][index]),
                    );
                  },
                ),
              ),
              // Search Screen with ListView
              Container(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: _data[1].length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_data[1][index]),
                    );
                  },
                ),
              ),
              // Profile Screen with ListView
              Container(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: _data[2].length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_data[2][index]),
                    );
                  },
                ),
              ),
            ],  // List of screens (Home, Search, Profile)
          ),
        ),
      ],
    );
  }
}

