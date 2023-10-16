import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedOpacityDesign extends StatefulWidget {
  const AnimatedOpacityDesign({super.key});

  @override
  State<AnimatedOpacityDesign> createState() => _AnimatedOpacityDesignState();
}

class _AnimatedOpacityDesignState extends State<AnimatedOpacityDesign> {
  // 0 fully transparent
  // 1 fully visible
  double opacityValue = 1.0;

  void changeOpacity() {
    setState(() {
      opacityValue = opacityValue == 1.0 ? 0.0 : 1.0;
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
        title: Text("Animated Opacity Design"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedOpacity(
              duration: const Duration(seconds: 3),
              opacity: opacityValue,
              child: Container(
                width: screenWidth * 0.4,
                height: clientHeight * 0.7,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeOpacity,
        child: Icon(Icons.change_circle_outlined),
      ),
    );
  }
}
