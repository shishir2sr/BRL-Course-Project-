import 'package:final_project/constants.dart';
import 'package:final_project/model/sidebar.dart';
import 'package:flutter/material.dart';

class SideBarRow extends StatelessWidget {
  final SidebarItem item;

  const SideBarRow({Key? key, required this.item}) : super(key: key);

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
          child: Text(item.title.toString(), style: kCalloutLabelStyle),
        ),
      ],
    );
  }
}
