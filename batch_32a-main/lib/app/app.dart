import 'package:batch_32a/screen/area_of_circle_screen.dart';
import 'package:batch_32a/screen/flutter_layout_screen.dart';
import 'package:batch_32a/screen/hello_world_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // themes
      home: AreaOfCircleScreen(),
    );
  }
}
