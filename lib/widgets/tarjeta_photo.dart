

import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class Tarjeta_Photo1 extends StatelessWidget {
  const Tarjeta_Photo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children:  [
          const ListTile (
            leading:  Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
            title:  Text('Soy un Titulo'),
            subtitle: Text('Hola soy el contenido de esta tarjeta, aqui encontraras las descripciones de todo tipo'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed:(){}, 
                  child: const Text('Cancelar'),
                  ),
                  TextButton(
                  onPressed:(){}, 
                  child: const Text('Ok'))            
                  ],
            ),
          )
        ],
      ),
    );
  }
}
