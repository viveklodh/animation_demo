import 'package:flutter/material.dart';

class RotationTransitionExample extends StatefulWidget {
  @override
  State<RotationTransitionExample> createState() =>
      _RotationTransitionExampleState();
}

class _RotationTransitionExampleState extends State<RotationTransitionExample>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(duration: Duration(seconds: 4), vsync: this);

    _animationController?.repeat();

    _animationController!.addListener(() {
      print(_animationController!.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("rotation transition example"),
      ),
      body: Center(
          child: RotationTransition(
        turns: Tween<double>(begin: 0, end: 1).animate(_animationController!),
        child: Container(
          width: 200,
          height: 200,
          color: Colors.black,
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _animationController!.isAnimating
              ? _animationController!.stop()
              : _animationController!.repeat();
        },
        child: Icon(Icons.animation),
      ),
    );
  }
}
