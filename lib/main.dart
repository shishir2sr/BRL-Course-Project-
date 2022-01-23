// ignore_for_file: must_be_immutable

import 'package:final_project/constants.dart';
import 'package:final_project/model/course.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: RecentCourseCard(
          course: recentCourses[2],
        )),
      ),
    );
  }
}

class RecentCourseCard extends StatelessWidget {
  RecentCourseCard({Key? key, required this.course}) : super(key: key);
  Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        width: 240,
        height: 240,
        decoration: BoxDecoration(
          gradient: course.background,
          borderRadius: BorderRadius.circular(41.0),
          boxShadow: [
            BoxShadow(
                color: course.background.colors[0].withOpacity(0.3),
                offset: const Offset(0, 20),
                blurRadius: 30.0),
            BoxShadow(
                color: course.background.colors[1].withOpacity(0.3),
                offset: const Offset(0, 20),
                blurRadius: 30.0)
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 32, right: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course.courseSubtitle,
                    style: kCardSubtitleStyle,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    course.courseTitle,
                    style: kCardTitleStyle,
                  )
                ],
              ),
            ),
            Expanded(
              child: Image.asset(
                'asset/illustrations/${course.illustration}',
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
