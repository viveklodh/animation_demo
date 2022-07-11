import 'package:animation_demo/explicit_animation/positioned_transition.dart';
import 'package:animation_demo/implicit_animation/animated_container.dart';
import 'package:animation_demo/page_transition/page_transition_example.dart';
import 'package:animation_demo/widgets/tab_bar_example.dart';
import 'package:flutter/material.dart';

import 'explicit_animation/rotation_transition.dart';
import 'hero_animation/hero_animation_example.dart';
import 'implicit_animation/animated_opacity.dart';
import 'implicit_animation/tween_animation.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: PositionedTransitionExample(),
    );
  }
}
