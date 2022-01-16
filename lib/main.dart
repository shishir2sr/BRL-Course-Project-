import 'package:final_project/model/sidebar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SideBarRow(
          item: sidebarItem[2],
        ),
      ),
    );
  }
}

class SideBarRow extends StatelessWidget {
  final SidebarItem item;

  SideBarRow({required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // ignore: avoid_unnecessary_containers
        Container(
          width: 42,
          height: 42,
          padding: const EdgeInsets.all(10),
          child: item.icon,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              gradient: item.background),
        ),
        const SizedBox(
          width: 12,
        ),
        Center(
          child: Container(
            child: Text(
              item.title.toString(),
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w800,
                color: Color(0xFF242629),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
