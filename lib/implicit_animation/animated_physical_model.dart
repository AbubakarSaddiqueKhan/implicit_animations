import 'package:flutter/material.dart';

class AnimatedPhysicalModelDesign extends StatefulWidget {
  const AnimatedPhysicalModelDesign({super.key});

  @override
  State<AnimatedPhysicalModelDesign> createState() =>
      _AnimatedPhysicalModelDesignState();
}

Color physicalModelColor = Colors.amber;
double physicalModelElevation = 0.0;
BorderRadius borderRadius = BorderRadius.circular(0.0);
Color physicalModelShadowColor = Colors.black;

class _AnimatedPhysicalModelDesignState
    extends State<AnimatedPhysicalModelDesign> {
  void changePadding() {
    setState(() {
      physicalModelColor =
          physicalModelColor == Colors.amber ? Colors.purple : Colors.amber;
      physicalModelElevation = physicalModelElevation == 0.0 ? 20.0 : 0.0;
      borderRadius = borderRadius == BorderRadius.circular(0.0)
          ? BorderRadius.circular(20.0)
          : BorderRadius.circular(0.0);
      physicalModelShadowColor =
          physicalModelShadowColor == Colors.black ? Colors.blue : Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Default Txet Style"),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedPhysicalModel(
          color: physicalModelColor,
          duration: const Duration(seconds: 3),
          shape: BoxShape.rectangle,
          borderRadius: borderRadius,
          shadowColor: physicalModelShadowColor,
          elevation: physicalModelElevation,
          child: Container(
            width: 500,
            height: 500,
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
