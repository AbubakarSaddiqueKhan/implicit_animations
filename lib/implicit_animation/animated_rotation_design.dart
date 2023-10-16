import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedRotationDesign extends StatefulWidget {
  const AnimatedRotationDesign({super.key});

  @override
  State<AnimatedRotationDesign> createState() => _AnimatedRotationDesignState();
}

double noOfTurns = 0.0;

class _AnimatedRotationDesignState extends State<AnimatedRotationDesign> {
  void changePadding() {
    setState(() {
      // 0.125 is equal's to 45 degree
      // 1 is the complete rotation
      noOfTurns = noOfTurns == 0.0 ? 1.0 : 0.0;
    });

    print(noOfTurns);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Rotation Design"),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedRotation(
          alignment: Alignment.topLeft,
          turns: noOfTurns,
          duration: const Duration(seconds: 8),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.brown,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changePadding,
        child: Icon(Icons.add),
      ),
    );
  }
}
