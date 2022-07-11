import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  double _opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("animated container example"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AnimatedOpacity(
              duration: Duration(seconds: 3),
              opacity: _opacity,
              child: Container(
                  width: 200,
                  height: 200,
                  child: Image.asset("images/weatherImage.jpg")),
            ),
            ElevatedButton(
                onPressed: () => setState(() {
                      _opacity = 0;
                    }),
                child: Text("hide image ")),
            ElevatedButton(
                onPressed: () => setState(() {
                      _opacity = 1;
                    }),
                child: Text("show image ")),
          ],
        ),
      ),
    );
  }
}
