

import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

double _width= 40;
double _heigt= 40;
Color _color=Colors.black;
BorderRadiusGeometry _boderRadius=  BorderRadius.circular(10);

Random random=Random();

void changeShape(){

  _width= random.nextInt(200).toDouble() +40;
  _heigt= random.nextInt(200).toDouble() +40;
  _color=  Color.fromRGBO(
    random.nextInt(255), 
    random.nextInt(255), 
    random.nextInt(255), 
    0.9);
  _boderRadius=BorderRadius.circular(random.nextInt(100).toDouble() +10);

  setState(() {
    
  });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animacion Screen'),
      ),

      body:  Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          height: _heigt,
          width: _width,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _boderRadius

          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle_outline_rounded, size: 30,),
        onPressed: (){
          changeShape();
        }
        ),
    );

  }
}