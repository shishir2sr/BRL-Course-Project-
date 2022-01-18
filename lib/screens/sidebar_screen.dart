import 'package:final_project/components/sidebar_row.dart';
import 'package:final_project/model/sidebar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SidebarScreen extends StatelessWidget {
  const SidebarScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('asset/images/profile.jpg'),
                  radius: 25,
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Yeasir Arefin Tusher",
                      style: kHeadlineLabelStyle,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "License ends on Jan, 2023",
                      style: kSearchPlaceholderStyle,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            SideBarRow(
              item: sidebarItem[0],
            ),
            const SizedBox(
              height: 32,
            ),
            SideBarRow(
              item: sidebarItem[1],
            ),
            const SizedBox(
              height: 32,
            ),
            SideBarRow(
              item: sidebarItem[2],
            ),
            const SizedBox(
              height: 32,
            ),
            SideBarRow(
              item: sidebarItem[3],
            ),
            const Spacer(),
            Row(
              children: [
                Image.asset(
                  'asset/icons/icon-logout.png',
                  width: 17,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  "Log out",
                  style: kSecondaryCalloutLabelStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
