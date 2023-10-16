import 'package:flutter/material.dart';

class AnimatedDefaultTxetStyleDesign extends StatefulWidget {
  const AnimatedDefaultTxetStyleDesign({super.key});

  @override
  State<AnimatedDefaultTxetStyleDesign> createState() =>
      _AnimatedDefaultTxetStyleDesignState();
}

TextStyle animatedTextStyleValue =
    TextStyle(color: Colors.pink, fontSize: 20, fontStyle: FontStyle.normal);

class _AnimatedDefaultTxetStyleDesignState
    extends State<AnimatedDefaultTxetStyleDesign> {
  void changeTextStyle() {
    setState(() {
      animatedTextStyleValue = animatedTextStyleValue ==
              TextStyle(
                  color: Colors.pink, fontSize: 20, fontStyle: FontStyle.normal)
          ? TextStyle(
              color: Colors.amber,
              fontSize: 50,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic)
          : TextStyle(
              color: Colors.pink, fontSize: 20, fontStyle: FontStyle.normal);
    });

    print(animatedTextStyleValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Default Txet Style"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
            width: 500,
            height: 500,
            color: Colors.brown,
            alignment: Alignment.center,
            child: AnimatedDefaultTextStyle(
              duration: const Duration(seconds: 2),
              style: animatedTextStyleValue,
              child: Text("Hi i am Abubakar"),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeTextStyle,
        child: Icon(Icons.add),
      ),
    );
  }
}
