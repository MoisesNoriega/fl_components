


import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {


final String? hintText;
final String? labelText;
final String? helperText;
final IconData? icon;
final IconData? suffixIcon;
final TextInputType? keyboardType;
final bool isPassword;


  const CustomInputField({
    super.key, 
     this.hintText, 
      this.labelText, 
       this.helperText, 
       this.icon, 
       this.suffixIcon, 
       this.keyboardType, 
       this.isPassword= false, 

  });

  @override
  Widget build(BuildContext context) {



    return TextFormField( //formularios recomendable
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: isPassword,
      onChanged: (value) {//para escuchar los cambios-- es de tipo string
      //  print('value: $value');
      },
      validator: (value) { //valida el campo
         if(value == null) return 'Este campo es requerido';
         return value.length < 3 ? 'Minimo 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,//se dispara cuando el usuario interactua con el texfield
      decoration:  InputDecoration(
        hintText: hintText, //fonde de texfield indicaciones
        labelText: labelText, //dato referente al texlfield
        helperText: helperText, 
        labelStyle: const TextStyle(fontSize: 20),// indicacion de la validacion
      //  counterText: '9/3'//para otras opciones o avisos
      //suffixIcon: Icon(Icons.group_outlined),//para icono al final dentro del textfield
      //prefixIcon: Icon(Icons.group_outlined),//para iconos al inicio dentro del textfield
      icon: icon == null ? null : Icon(icon), // icono recorre el textfield
      suffixIcon: suffixIcon ==null ? null : Icon(suffixIcon),
     
      // border: OutlineInputBorder(
      //   borderRadius: BorderRadius.only(
      //     bottomLeft: Radius.circular(10),
      //     topRight: Radius.circular(10),

      //   )
      // )
      ),
    );
  }
}