// import 'package:flutter/material.dart';

// class AnimatedSwitcherDesign extends StatefulWidget {
//   const AnimatedSwitcherDesign({super.key});

//   @override
//   State<AnimatedSwitcherDesign> createState() => _AnimatedSwitcherDesignState();
// }

// class _AnimatedSwitcherDesignState extends State<AnimatedSwitcherDesign> {
//   static Widget firstWidget =
//       Container(width: 200, height: 300, color: Colors.blue);
//   static Widget secondWidget =
//       Container(width: 400, height: 200, color: Colors.brown);

//   Widget myWidget = firstWidget;

//   void swapWidget() {
//     setState(() {
//       myWidget = myWidget == firstWidget ? secondWidget : firstWidget;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Animated Positioned Design"),
//         centerTitle: true,
//       ),
//       body: Center(
//           child: AnimatedSwitcher(
//         duration: const Duration(seconds: 3),
//         child: myWidget,
//       )),
//       floatingActionButton: FloatingActionButton(
//         onPressed: swapWidget,
//         child: Icon(Icons.change_circle_outlined),
//       ),
//     );
//   }
// }
