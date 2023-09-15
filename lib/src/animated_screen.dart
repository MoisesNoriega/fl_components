import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _heigth = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(50);
  void changeShape() {
    final randon=Random();//cambios aleatorios
     _heigth =randon.nextInt(400).toDouble()+50;
      _width =randon.nextInt(400).toDouble()+50;
      _color = Color.fromRGBO(
        randon.nextInt(255), 
        randon.nextInt(255), 
        randon.nextInt(255), 
        1);
      _borderRadius = BorderRadius.circular(randon.nextInt(100).toDouble()+10);
    setState(() {});
  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animación'),
        ),
        body: Center(
          child: AnimatedContainer(
            duration:const  Duration(milliseconds: 300),
            curve: Curves.easeOutCubic,
            //funciona como un div en html
            width: _width,
            height: _heigth,
            decoration:
                BoxDecoration(color: _color, borderRadius: _borderRadius),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child:  Icon(
            Icons.play_circle_outline,
            size: 30,
          ),
          onPressed: changeShape,
        ));
  }
 
}

