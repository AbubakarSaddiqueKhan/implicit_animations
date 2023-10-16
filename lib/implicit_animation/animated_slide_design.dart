import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedSlideDesign extends StatefulWidget {
  const AnimatedSlideDesign({super.key});

  @override
  State<AnimatedSlideDesign> createState() => _AnimatedSlideDesignState();
}

Random random = Random();

class _AnimatedSlideDesignState extends State<AnimatedSlideDesign> {
  Offset slideOffset = Offset(0.0, 0.0);
  // offset 0,0 top left
  // offset of 1,1 bottom right

  void changeAlignment() {
    setState(() {
      slideOffset =
          slideOffset == Offset(0.0, 0.0) ? Offset(0.5, 0.5) : Offset(0, 0);
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
        title: Text("Animated Slide Design"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
            width: screenWidth,
            height: clientHeight,
            color: Colors.blue,
            child: AnimatedSlide(
                duration: const Duration(seconds: 3),
                offset: slideOffset,
                child: Text(
                  "Hi I am abubakar",
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeAlignment,
        child: Icon(Icons.change_circle_outlined),
      ),
    );
  }
}
