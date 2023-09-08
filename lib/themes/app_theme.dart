

import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary=Colors.indigo;

//definir tema principal para ocupar en todo el proyecto
  static final ThemeData lightTheme=ThemeData.light().copyWith(
          //color primario
          primaryColor: Colors.indigo,
          //appbar theme
          appBarTheme: const AppBarTheme(color: primary, elevation: 0),
          //tema de botones que contraste con el proyecto
          textButtonTheme:  TextButtonThemeData( style: TextButton.styleFrom(primary:primary)),
          //tema de botones flotantes
          floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: primary),
          //tema de botones elevados
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
            primary: primary, 
            shape:const StadiumBorder(),
            elevation: 25)),

            
          
          );


}

