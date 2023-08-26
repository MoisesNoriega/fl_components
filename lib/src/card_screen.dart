import 'package:flutter/material.dart';

import '../widgets/tarjeta_img1.dart';
import '../widgets/tarjeta_photo.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      //dibujar la lista
      body:ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children:const  [
          //varios temas en la lista
           Tarjeta_Photo1(),
           SizedBox(height: 20,),
           Tarjeta_Img1(titleImg: 'Paisaje', imgURL: 'https://e0.pxfuel.com/wallpapers/907/38/desktop-wallpaper-vector-landscape-illustration-vectors-clipart-graphics-vector-art-in-2021-art-landscape-illustration-landscape-design-drawings.jpg'),
            SizedBox(height: 20,),
           Tarjeta_Photo1(),
           SizedBox(height: 20,),
           Tarjeta_Img1(imgURL: 'https://media.photographycourse.net/wp-content/uploads/2014/11/08164934/Landscape-Photography-steps.jpg',)
        ],
      )
    );
  }
}

