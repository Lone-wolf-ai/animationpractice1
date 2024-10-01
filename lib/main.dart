import 'package:flutter/material.dart';
import 'package:flutter_course_animations_from_zero_to_hero/implicit_Animation/lecture10.dart';
import 'package:flutter_course_animations_from_zero_to_hero/implicit_Animation/lecture11.dart';
import 'package:flutter_course_animations_from_zero_to_hero/implicit_Animation/lecture2.dart';
import 'package:flutter_course_animations_from_zero_to_hero/implicit_Animation/lecture3.dart';
import 'package:flutter_course_animations_from_zero_to_hero/implicit_Animation/lecture4.dart';
import 'package:flutter_course_animations_from_zero_to_hero/implicit_Animation/lecture5.dart';
import 'package:flutter_course_animations_from_zero_to_hero/implicit_Animation/lecture6.dart';
import 'package:flutter_course_animations_from_zero_to_hero/implicit_Animation/lecture7.dart';
import 'package:flutter_course_animations_from_zero_to_hero/implicit_Animation/lecture8.dart';
import 'package:flutter_course_animations_from_zero_to_hero/implicit_Animation/lecture9.dart';
import 'package:flutter_course_animations_from_zero_to_hero/lecture1.dart';

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
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  AnimatedPositionedExample()),
              );
            },
            child: const Text("Lecture 7"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  AnimatedPositionedDirectionalExample()),
              );
            },
            child: const Text("Lecture 8"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  AnimatedCrossFadeExample()),
              );
            },
            child: const Text("Lecture 9"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  AnimatedSwitcherExample()),
              );
            },
            child: const Text("Lecture 10"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  AnimatedListExample()),
              );
            },
            child: const Text("Lecture 11"),
          ),
        ],
      ),
    );
  }
}
