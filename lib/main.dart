import 'package:flutter/material.dart';
import 'package:flutter_course_animations_from_zero_to_hero/lecture1.dart';
import 'package:flutter_course_animations_from_zero_to_hero/lecture2.dart';
import 'package:flutter_course_animations_from_zero_to_hero/lecture3.dart';
import 'package:flutter_course_animations_from_zero_to_hero/lecture4.dart';
import 'package:flutter_course_animations_from_zero_to_hero/lecture5.dart';
import 'package:flutter_course_animations_from_zero_to_hero/lecture6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Lecture1()),
              );
            },
            child: const Text("Lecture 1"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Lecture2()),
              );
            },
            child: const Text("Lecture 2"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Lecture3()),
              );
            },
            child: const Text("Lecture 3"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AnimatedOpacityExample()),
              );
            },
            child: const Text("Lecture 4"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AniPad()),
              );
            },
            child: const Text("Lecture 5"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AnimatedPhysicalModelExample()),
              );
            },
            child: const Text("Lecture 6"),
          ),
        ],
      ),
    );
  }
}
