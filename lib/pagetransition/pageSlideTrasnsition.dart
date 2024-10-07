import 'package:flutter/material.dart';

class PageSlideTransition extends PageRouteBuilder {
  final Widget page;

  PageSlideTransition(this.page)
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var tween = Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero);
            var offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 500),
        );
}

class FirstPage3 extends StatelessWidget {
  const FirstPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Slide Transition Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(PageSlideTransition(const SecondPage3()));
          },
          child: const Text('Go to Second Page'),
        ),
      ),
    );
  }
}

class SecondPage3 extends StatelessWidget {
  const SecondPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: const Center(
        child: Text('This is the second page'),
      ),
    );
  }
}