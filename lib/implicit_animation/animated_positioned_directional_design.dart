// import 'package:flutter/material.dart';

// class AnimatedPositionedDirectionDesign extends StatefulWidget {
//   const AnimatedPositionedDirectionDesign({super.key});

//   @override
//   State<AnimatedPositionedDirectionDesign> createState() =>
//       _AnimatedPositionedDirectionDesignState();
// }

// class _AnimatedPositionedDirectionDesignState
//     extends State<AnimatedPositionedDirectionDesign> {
//   @override
//   Widget build(BuildContext context) {
//     double left = 0.0;
//     double top = 0.0;

//     void changePosition() {
//       setState(() {
//         top = top == 0.0 ? 200 : 0.0;
//         left = left == 0.0 ? 200 : 0.0;
//         print(top);
//         print(left);
//       });
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Animated Positioned Directional Design"),
//         centerTitle: true,
//       ),
//       body: Stack(
//         children: [
//           AnimatedPositionedDirectional(
//             child: Container(
//               width: 200,
//               height: 200,
//               color: Colors.amber,
//             ),
//             duration: const Duration(seconds: 3),
//             start: 0,
//             top: top,
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: changePosition,
//         child: Icon(Icons.change_circle_outlined),
//       ),
//     );
//   }
// }
