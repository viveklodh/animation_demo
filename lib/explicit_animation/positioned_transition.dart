import 'package:flutter/material.dart';

class PositionedTransitionExample extends StatefulWidget {
  @override
  State<PositionedTransitionExample> createState() =>
      _PositionedTransitionExampleState();
}

class _PositionedTransitionExampleState
    extends State<PositionedTransitionExample>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  Animation<double>? curveAnimation;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(duration: Duration(seconds: 7), vsync: this);

    curveAnimation =
        CurvedAnimation(parent: _animationController!, curve: Curves.bounceOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("position transition example"),
      ),
      body: Stack(
        children: [
          PositionedTransition(
            rect: RelativeRectTween(
                    begin: RelativeRect.fromLTRB(0, 0, 0, 700),
                    end: RelativeRect.fromLTRB(0, 700, 0, 0))
                .animate(curveAnimation!),
            child: Container(
              width: 100,
              height: 100,
              decoration:
                  BoxDecoration(color: Colors.red, shape: BoxShape.circle),
            ),
          ),
        ],
      ),
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
