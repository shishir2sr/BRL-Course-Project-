import 'package:final_project/constants.dart';
import 'package:final_project/model/sidebar.dart';
import 'package:flutter/material.dart';

import 'components/sidebar_row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SidebarScreen(),
      ),
    );
  }
}

class SidebarScreen extends StatelessWidget {
  const SidebarScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          color: kSidebarBackgroundColor,
          borderRadius: BorderRadius.only(topRight: Radius.circular(34.0)),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * .85,
        padding: const EdgeInsets.symmetric(
          vertical: 35,
          horizontal: 20,
        ),
        child: SideBarRow(
          item: sidebarItem[1],
        ),
      ),
    );
  }
}
