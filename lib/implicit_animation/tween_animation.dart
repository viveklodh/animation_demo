// tweenAnimationBuilder
// create custom implicit animations
//custom start and end point like 0 to 1 // 0 , 0.1 , 0.2 ,0.3,,,,,1
//hame kuch click nahi karna padega to start animation , isme ham sidha define kar denge start and end point

import 'package:flutter/material.dart';

class TweenAnimationExample extends StatefulWidget {
  @override
  State<TweenAnimationExample> createState() => _TweenAnimationExampleState();
}

class _TweenAnimationExampleState extends State<TweenAnimationExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tween animation example"),
      ),
      body: TweenAnimationBuilder(
        duration: Duration(seconds: 5),
        tween: Tween<double>(begin: 0, end: 1),
        child: Image.asset("images/weatherImage.jpg"),
        builder: (BuildContext context, double val, child) {
          return Container(
              child: Padding(
            padding: EdgeInsets.all(val * 100),
            child: child,
          ));
        },
      ),
    );
  }
}
