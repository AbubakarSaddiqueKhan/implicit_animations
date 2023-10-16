import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedAlignDesign extends StatefulWidget {
  const AnimatedAlignDesign({super.key});

  @override
  State<AnimatedAlignDesign> createState() => _AnimatedAlignDesignState();
}

Random random = Random();

class _AnimatedAlignDesignState extends State<AnimatedAlignDesign> {
  // Alignment alignment =
  //     Alignment(random.nextDouble() * -1.0, random.nextDouble() * -1.0);
  // Alignment alignment = Alignment(-1.0, -1.0);
  Alignment alignment = Alignment.topLeft;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer.periodic(Duration(milliseconds: 500), (timer) {
  //     setState(() {
  //       alignment = alignment ==
  //               Alignment(random.nextDouble() * 1.0, random.nextDouble() * 1.0)
  //           ? Alignment(
  //               random.nextDouble() * (-1.0), random.nextDouble() * (-1.0))
  //           : Alignment(random.nextDouble() * 1.0, random.nextDouble() * 1.0);
  //     });
  //   });
  // }

  void changeAlignment() {
    setState(() {
      // alignment = alignment == Alignment(1.0, 1.0)
      //     ? Alignment(-1.0, -1.0)
      //     : Alignment(1.0, 1.0);
      alignment = alignment == Alignment.topLeft
          ? Alignment.bottomRight
          : Alignment.topLeft;
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
        title: Text("Animated Align Design"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: screenWidth,
              height: clientHeight,
              child: AnimatedAlign(
                heightFactor: clientHeight * 0.3,
                widthFactor: screenWidth * 0.2,
                alignment: alignment,
                duration: const Duration(seconds: 2),
                child: SizedBox(
                  width: screenWidth * 0.12,
                  height: clientHeight * 0.3,
                  child: Image.asset(
                    "assets/images/bakar.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeAlignment,
        child: Icon(Icons.change_circle_outlined),
      ),
    );
  }
}
