import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';


class Tarjeta_Img1 extends StatelessWidget {
//para variables de nombre y la url
final String imgURL;
final String? titleImg;

  const Tarjeta_Img1({super.key, required this.imgURL,  this.titleImg});

  @override
  Widget build(BuildContext context) {
    return  Card (
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder( //funcion de borde
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5), // tema principal de app_theme.dart
      child: Column (
        children: [
           FadeInImage(
            image: NetworkImage(imgURL), 
            placeholder: const AssetImage('assets/loading.gif'), //dirección de img
            //valores de separacion de imagen con el espacio asignado
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration:  Duration(milliseconds: 300) ,
             ),
             //si el card no trae titulo dibuja sin marco
             if(titleImg != null)
             //separacion y centrado de imagen
             Container(
              alignment: AlignmentDirectional.centerEnd,
              padding:  const EdgeInsets.only(right: 10, top: 10, bottom: 10),
              child: 
               Text(titleImg ?? 'No Tittle'),
           
              )
        ],
      ),
    );
  }
}