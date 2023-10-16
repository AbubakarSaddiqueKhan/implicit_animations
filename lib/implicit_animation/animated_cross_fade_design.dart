import 'package:flutter/material.dart';

class AnimatedCrossFadeDesign extends StatefulWidget {
  const AnimatedCrossFadeDesign({super.key});

  @override
  State<AnimatedCrossFadeDesign> createState() =>
      _AnimatedCrossFadeDesignState();
}

Widget firstChild = Container(
  width: 200,
  height: 40,
  color: Colors.amber,
  alignment: Alignment.center,
  child: Text("Add to chart"),
);
Widget secondChild = Container(
  width: 200,
  height: 40,
  alignment: Alignment.center,
  color: Colors.purple,
  child: Text("Sold Out"),
);

class _AnimatedCrossFadeDesignState extends State<AnimatedCrossFadeDesign> {
  CrossFadeState crossFadeState = CrossFadeState.showFirst;

  void swapChild() {
    setState(() {
      crossFadeState = crossFadeState == CrossFadeState.showFirst
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Cross Fade Design"),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedCrossFade(
            firstChild: firstChild,
            secondChild: secondChild,
            crossFadeState: crossFadeState,
            duration: const Duration(seconds: 3)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: swapChild,
        child: Icon(Icons.swap_calls),
      ),
    );
  }
}
