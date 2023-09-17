import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions:  [
           Container(
            margin: const EdgeInsets.only( right: 10),//separacion externo   pading separacion interno
            child:const CircleAvatar(
              child: Text('MN'),
            ),
          ),
        ],
      ),
      body: Center(
        child: CircleAvatar(
            maxRadius: 50, child: Image.asset('assets/incognito.png')),
      ),
    );
  }
}
