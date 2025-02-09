import 'package:flutter/material.dart';

class TableWidget extends StatefulWidget {
  const TableWidget({super.key});

  @override
  State<TableWidget> createState() => _TableWidgetState();
}

class _TableWidgetState extends State<TableWidget> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Allows horizontal scrolling
      child: Table(
        border: TableBorder.all(),
        columnWidths: const {
          0: FixedColumnWidth(100.0), // Fixed width for first column
          1: FlexColumnWidth(), // Flexible width for second column
          2: FixedColumnWidth(80.0), // Fixed width for third column
        },
        children: [
          TableRow(
            decoration: BoxDecoration(color: Colors.grey[300]), // Header row styling
            children: [
              tableCell("Name", isHeader: true),
              tableCell("Age", isHeader: true),
              tableCell("Country", isHeader: true),
            ],
          ),
          TableRow(children: [
            tableCell("Alice"),
            tableCell("25"),
            tableCell("USA"),
          ]),
          TableRow(children: [
            tableCell("Bob"),
            tableCell("30"),
            tableCell("Canada"),
          ]),
          TableRow(children: [
            tableCell("Charlie"),
            tableCell("28"),
            tableCell("UK"),
          ]),
          TableRow(children: [
            tableCell("Charlie"),
            tableCell("28"),
            tableCell("UK"),
          ]),
        ],
      ),
    );
  }
  Widget tableCell(String text, {bool isHeader = false}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

}
