import 'package:flutter/material.dart';
import 'package:flutter_implicit_animation/implicit_animation/animated_align_design.dart';
import 'package:flutter_implicit_animation/implicit_animation/animated_container_design.dart';
import 'package:flutter_implicit_animation/implicit_animation/animated_cross_fade_design.dart';
import 'package:flutter_implicit_animation/implicit_animation/animated_default_text_style.dart';
import 'package:flutter_implicit_animation/implicit_animation/animated_opacity_design.dart';
import 'package:flutter_implicit_animation/implicit_animation/animated_padding_design.dart';
import 'package:flutter_implicit_animation/implicit_animation/animated_physical_model.dart';
import 'package:flutter_implicit_animation/implicit_animation/animated_positioned_design.dart';
import 'package:flutter_implicit_animation/implicit_animation/animated_positioned_directional_design.dart';
import 'package:flutter_implicit_animation/implicit_animation/animated_rotation_design.dart';
import 'package:flutter_implicit_animation/implicit_animation/animated_scale_design.dart';
import 'package:flutter_implicit_animation/implicit_animation/animated_slide_design.dart';
import 'package:flutter_implicit_animation/implicit_animation/animated_switcher_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainerDesign();
  }
}
