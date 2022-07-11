import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class PageTransitionExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Transition example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Fade Second Page - Default'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Left To Right'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(seconds: 1),
                    type: PageTransitionType.leftToRight,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Right To Left Transition'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(seconds: 1),
                    type: PageTransitionType.rightToLeft,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Top to Bottom'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(seconds: 1),
                    curve: Curves.linear,
                    type: PageTransitionType.topToBottom,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Bottom to Top'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(seconds: 1),
                    curve: Curves.linear,
                    type: PageTransitionType.bottomToTop,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Scale Transition'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(seconds: 2),
                    curve: Curves.linear,
                    type: PageTransitionType.scale,
                    alignment: Alignment.topCenter,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Rotate Transition Second Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(seconds: 2),
                    curve: Curves.bounceOut,
                    type: PageTransitionType.rotate,
                    alignment: Alignment.topCenter,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Right to Left Joined'),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        alignment: Alignment.bottomCenter,
                        curve: Curves.easeInOut,
                        duration: const Duration(milliseconds: 600),
                        reverseDuration: const Duration(milliseconds: 600),
                        type: PageTransitionType.rightToLeftJoined,
                        child: SecondPage(),
                        childCurrent: this));
              },
            ),
            ElevatedButton(
              child: const Text('Left to Right Joined'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                      alignment: Alignment.bottomCenter,
                      curve: Curves.easeInOut,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600),
                      type: PageTransitionType.leftToRightJoined,
                      child: SecondPage(),
                      childCurrent: this),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Bottom to Top Joined'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                      alignment: Alignment.bottomCenter,
                      curve: Curves.easeInOut,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600),
                      type: PageTransitionType.bottomToTopJoined,
                      child: SecondPage(),
                      childCurrent: this),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Top to Bottom Joined'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                      alignment: Alignment.bottomCenter,
                      curve: Curves.easeInOut,
                      duration: Duration(seconds: 2),
                      reverseDuration: const Duration(milliseconds: 600),
                      type: PageTransitionType.topToBottomJoined,
                      child: SecondPage(),
                      childCurrent: this),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("second page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Second Page'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            )
          ],
        ),
      ),
    );
  }
}
