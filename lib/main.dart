import 'package:flutter/material.dart';
import 'package:flutter_course_animations_from_zero_to_hero/explicit_animation/lecture_1.dart';
import 'package:flutter_course_animations_from_zero_to_hero/explicit_animation/lecture_2.dart';
import 'package:flutter_course_animations_from_zero_to_hero/explicit_animation/lecture_3.dart';
import 'package:flutter_course_animations_from_zero_to_hero/explicit_animation/lecture_4.dart';
import 'package:flutter_course_animations_from_zero_to_hero/explicit_animation/lecture_6.dart';
import 'package:flutter_course_animations_from_zero_to_hero/explicit_animation/lecture_7.dart';
import 'package:flutter_course_animations_from_zero_to_hero/explicit_animation/lecture_8.dart';
import 'package:flutter_course_animations_from_zero_to_hero/explicit_animation/lecture_9.dart';
import 'package:flutter_course_animations_from_zero_to_hero/implicit_Animation/lecture1.dart';
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
import 'package:flutter_course_animations_from_zero_to_hero/pagetransition/pageMixSizeFadeTransiton.dart';
import 'package:flutter_course_animations_from_zero_to_hero/pagetransition/pageSlideTrasnsition.dart';
import 'package:flutter_course_animations_from_zero_to_hero/pagetransition/page_rotate_transition.dart';
import 'package:flutter_course_animations_from_zero_to_hero/pagetransition/pagefadetransition.dart';
import 'package:flutter_course_animations_from_zero_to_hero/pagetransition/pagescaletransition.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Lecture1()),
                  );
                },
                child: const Text("Lecture 1"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Lecture2()),
                  );
                },
                child: const Text("Lecture 2"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Lecture3()),
                  );
                },
                child: const Text("Lecture 3"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedOpacityExample()),
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>PositionedTransitionExample()  ),
                  );
                },
                child: const Text("Lecture 12"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>SizeTransitionExample()  ),
                  );
                },
                child: const Text("Lecture 13"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>const RotationTransitionExample()  ),
                  );
                },
                child: const Text("Lecture 14"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>FadeTransitionExample()),
                  );
                },
                child: const Text("Lecture 15"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>const PositionedDirectionalTransitionExample()),
                  );
                },
                child: const Text("Lecture 16"),
              ),
               ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>const TweenAnimationBuilderExample()),
                  );
                },
                child: const Text("Lecture 17"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>const IndexedStackTransitionExample()),
                  );
                },
                child: const Text("Lecture 18"),
              ),ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>const FirstPage()),
                  );
                },
                child: const Text("Lecture 19"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>const FirstPage1()),
                  );
                },
                child: const Text("Lecture 20"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>const FirstPage1()),
                  );
                },
                child: const Text("Lecture 21"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>const FirstPage2()),
                  );
                },
                child: const Text("Lecture 22"),
              ),
               ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>const FirstPage3()),
                  );
                },
                child: const Text("Lecture 23"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>const FirstPage4()),
                  );
                },
                child: const Text("Lecture 24"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
