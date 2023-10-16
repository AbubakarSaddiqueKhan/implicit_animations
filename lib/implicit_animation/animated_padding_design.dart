import 'package:flutter/material.dart';

class AnimatedPaddingDesign extends StatefulWidget {
  const AnimatedPaddingDesign({super.key});

  @override
  State<AnimatedPaddingDesign> createState() => _AnimatedPaddingDesignState();
}

EdgeInsets animatedPadding = EdgeInsets.all(0);

class _AnimatedPaddingDesignState extends State<AnimatedPaddingDesign> {
  void changePadding() {
    setState(() {
      animatedPadding = animatedPadding == EdgeInsets.all(0)
          ? EdgeInsets.all(100)
          : EdgeInsets.all(0);
    });

    print(animatedPadding);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Padding"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
            width: 500,
            height: 500,
            color: Colors.brown,
            alignment: Alignment.center,
            child: AnimatedPadding(
              padding: animatedPadding,
              duration: const Duration(seconds: 2),
              child: Text(
                  "Hi i am abubakar and this is the text that will explains you about the animated padding by changing or interpolates between the starting and the ending value of the animated padding value ",
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changePadding,
        child: Icon(Icons.add),
      ),
    );
  }
}
