import 'package:flutter/material.dart';

class AnimatedScaleDesign extends StatefulWidget {
  const AnimatedScaleDesign({super.key});

  @override
  State<AnimatedScaleDesign> createState() => _AnimatedScaleDesignState();
}

double scaleValue = 1.0;

class _AnimatedScaleDesignState extends State<AnimatedScaleDesign> {
  void changePadding() {
    setState(() {
      scaleValue = scaleValue == 1.0 ? 3.0 : 1.0;
    });

    print(scaleValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Scale Design"),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedScale(
          scale: scaleValue,
          duration: const Duration(seconds: 2),
          child: Container(
            width: 300,
            height: 300,
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
