import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPositionedDesign extends StatefulWidget {
  const AnimatedPositionedDesign({super.key});

  @override
  State<AnimatedPositionedDesign> createState() =>
      _AnimatedPositionedDesignState();
}

Random random = Random();

class _AnimatedPositionedDesignState extends State<AnimatedPositionedDesign> {
  double left = 0.0;
  double top = 0.0;

  void changePosition() {
    setState(() {
      top = top == 0.0 ? 400 : 0.0;
      left = left == 0.0 ? 400 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    var screenHeight = screenSize.height;
    var screenWidth = screenSize.width;
    var clientHeight = screenHeight - kToolbarHeight;
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Positioned Design"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
              left: left,
              top: top,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.amber,
              ),
              duration: const Duration(seconds: 3))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changePosition,
        child: Icon(Icons.change_circle_outlined),
      ),
    );
  }
}
