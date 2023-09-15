import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('InputsScreen'),
      ),
      body: const SingleChildScrollView(//para formularios y hacer scroll
        child:   Padding(padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 50),//los bordes
        child: Column(
          children:  [
            CustomInputField(labelText: 'Usuario:', hintText: 'Nombre de usuario',),
            SizedBox(height: 30,),//separacion de caja
            CustomInputField(labelText: 'Apellido:', hintText: 'Apellido de usuario',),
            SizedBox(height: 30,),//separacion de caja
            CustomInputField(labelText: 'Email:', hintText: 'Email de usuario', keyboardType: TextInputType.emailAddress,),
            SizedBox(height: 30,),//separacion de caja
            CustomInputField(labelText: 'Password:', hintText: 'Password de usuario', isPassword: true,),
            SizedBox(height: 30,),//separacion de caja
          ],
        ),),
      )

    );
  }
}
