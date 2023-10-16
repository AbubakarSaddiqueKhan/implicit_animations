import 'package:flutter/material.dart';

class AnimatedContainerDesign extends StatefulWidget {
  const AnimatedContainerDesign({super.key});

  @override
  State<AnimatedContainerDesign> createState() =>
      _AnimatedContainerDesignState();
}

class _AnimatedContainerDesignState extends State<AnimatedContainerDesign> {
  double height = 200;
  double width = 200;
  BoxDecoration boxDecoration = BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(0),
  );

  void changePropertiesOfContainer() {
    setState(() {
      boxDecoration = boxDecoration ==
              BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(0),
              )
          ? BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(40),
            )
          : BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(0),
            );
      height = height == 200 ? 400 : 200;
      width = width == 200 ? 400 : 200;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container Design"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 3),
              width: width,
              height: height,
              decoration: boxDecoration,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: changePropertiesOfContainer,
          child: Icon(Icons.change_circle_outlined)),
    );
  }
}
