import 'package:flutter/material.dart';

void main() => runApp( AvatarScreen());

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          //margin externo, padding interna
          title: const Text('Screen Avatar'),
          actions:  [
            Container(
              margin: const EdgeInsets.only(right: 10) ,
              child:  CircleAvatar(
                child:  const Text('MN'),
                backgroundColor: Colors.indigo[90],
              ),
            )
          ],
        ),
        body: const Center(
          
          child: CircleAvatar(
            maxRadius: 110,//valor del radio del circulo
            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/17879520?v=4'),
          )
        ),
      );
    
    
  }
}