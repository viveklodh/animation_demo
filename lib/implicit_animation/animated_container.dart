import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.black;

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
            AnimatedContainer(
                duration: Duration(seconds: 4),
                width: _width,
                height: _height,
                color: _color,
                child: Image.asset("images/weatherImage.jpg")),
            ElevatedButton(
                onPressed: () => setState(() {
                      _width = 300;
                      _height = 300;
                    }),
                child: Text("animate image size")),
            ElevatedButton(
                onPressed: () => setState(() {
                      _color = Colors.blue;
                    }),
                child: Text("animate container color")),
            AnimatedContainer(
              duration: Duration(seconds: 4),
              width: 150,
              height: 150,
              color: _color,
            ),
          ],
        ),
      ),
    );
  }
}
