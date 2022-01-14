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
        body: Row(
          children: <Widget>[
            // ignore: avoid_unnecessary_containers
            Container(
              width: 42,
              height: 42,
              padding: const EdgeInsets.all(10),
              child: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xFF00AEFF),
                        Color(0xFF0076FF),
                      ])),
            ),
            const SizedBox(
              width: 12,
            ),
            Center(
              child: Container(
                child: const Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF242629)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
