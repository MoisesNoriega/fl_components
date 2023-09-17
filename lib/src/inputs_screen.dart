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
      body:  SingleChildScrollView(//para formularios y hacer scroll
        child:   Padding(padding:  const EdgeInsets.symmetric(horizontal: 10, vertical: 50),//los bordes
        child: Column(
          children:  [
           const  CustomInputField(labelText: 'Usuario:', hintText: 'Nombre de usuario',),
           const SizedBox(height: 30,),//separacion de caja
           const CustomInputField(labelText: 'Apellido:', hintText: 'Apellido de usuario',),
           const SizedBox(height: 30,),//separacion de caja
            const CustomInputField(labelText: 'Email:', hintText: 'Email de usuario', keyboardType: TextInputType.emailAddress,),
           const SizedBox(height: 30,),//separacion de caja
           const CustomInputField(labelText: 'Password:', hintText: 'Password de usuario', isPassword: true,),
           const SizedBox(height: 30,),//separacion de caja
            ElevatedButton(
              child: const  Text('Enviar'),
              onPressed: ()
              {}, )
          ],
        ),),
      )

    );
  }
}
