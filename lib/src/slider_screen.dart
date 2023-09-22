import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _checkBox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider Screen'),
        ), //SingleChildScrollView cuando la imagen es muy grande y sobre pasa la pantalla, con este nos permite hacer scroll
        body: Column(
          children: [
            Slider.adaptive(
                //adaptative se adapta a la plataforma
                min: 50,
                max: 400,
                activeColor: AppTheme.primary, // color de acuerdo al tema
                value: _sliderValue,
                onChanged: _checkBox
                    ? ((value) {
                        // si el check esta habilitado el slider tambien
                        _sliderValue = value;
                        setState(() {
                          //redibujar el estado
                        });
                      })
                    : null //caso contrario
                ),
// //es una opcion
//             Checkbox(
//                 value: _checkBox,
//                 onChanged: (value) {
//                   _checkBox = value ??
//                       true; //validar que si no se recibe valor que sea true, de lo contrario ! o error
//                   setState(() {});
//                 }),

// //mejor utilizar

// CheckboxListTile(
//   title: const  Text('Habilitar Slider'),
//   activeColor: AppTheme.primary,
//   value: _checkBox,
//   onChanged: (value) {
//     setState(() {
//       _checkBox=value ?? true;
//     });

// },),

// //otra opcion switch

// Switch(
//   value: _checkBox,
// onChanged: (value){
//   _checkBox=value;
//   setState(() {
//   });
//   }),

            // mejor opcion de switch

            SwitchListTile.adaptive(
                title: const Text('Habilitar Slider'),
                activeColor: AppTheme.primary,
                value: _checkBox,
                onChanged: (value) {
                  _checkBox = value;
                  setState(() {});
                }),

                const AboutListTile(),//informativo de las licencias que ocupa

            //hacer SingleChildScrollView cuando la imagen rebase la pantalla, sino sigue marcando el desborde
            //envolver el scroll denro de un Expanded
            Image(
              image: const NetworkImage(
                  'https://www.pngmart.com/files/12/Sonic-PNG-Photos.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),

            /*     const  SizedBox(  // para dejar espacio en la pantalla y no se acerca muchoa al borde
                height: 50,
              ) */
          ],
        ));
  }
}
