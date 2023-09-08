

import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        actions: [
         Container(
          margin: const EdgeInsets.all(10),
           child: const CircleAvatar(
              child: Text('MN'),
            ),
         )
        ],
        title: const Text('Circular Avatar'),
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/2048px-Octicons-mark-github.svg.png'),
          maxRadius: 90,
        )
      ),

    );
  }
}