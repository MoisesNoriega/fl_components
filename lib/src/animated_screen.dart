
import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

double _width=50;
double _height=50;
Color _color= Colors.black;
BorderRadiusGeometry _borderRadius= BorderRadius.circular(20);

void changeSaphe(){
  Random random=Random();
  _width=random.nextInt(200).toDouble()+30;
  _height=random.nextInt(150).toDouble() +40;
  _color=Color.fromRGBO(
    random.nextInt(255), 
    random.nextInt(255), 
    random.nextInt(255), 
    1);
  _borderRadius=BorderRadius.circular(random.nextInt(60).toDouble()+10);


  setState(() {
    
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animacion'),
      ),
      body:  Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutCubic,
          decoration:  BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ),

        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle_outline, size: 50,),
        
        onPressed: ()=> changeSaphe()
        ),
    );
  }
}