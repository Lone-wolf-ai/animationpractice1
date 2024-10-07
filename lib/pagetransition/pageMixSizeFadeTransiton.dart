import 'package:flutter/material.dart';

class PageMixSizeFadeTransition extends PageRouteBuilder {
  final Widget page;

  PageMixSizeFadeTransition({required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return Align(
              alignment: Alignment.center,
              child: SizeTransition(
                sizeFactor: animation,
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              ),
            );
          },
        );
}

class FirstPage4 extends StatelessWidget {
  const FirstPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Slide Transition Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(PageMixSizeFadeTransition(page: const SecondPage4()));
          },
          child: const Text('Go to Second Page'),
        ),
      ),
    );
  }
}

class SecondPage4 extends StatelessWidget {
  const SecondPage4({super.key});

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
