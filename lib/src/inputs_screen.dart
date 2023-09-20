import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey =
        GlobalKey<FormState>(); // para manejo nde widget y leer el formulario

    final Map<String, String> formValues = {
      // tomar los valores
      'first_name': 'Moises',
      'last_name': 'Noriega',
      'email': 'noriega@gmail.com',
      'password': '123456',
      'role': 'Admin',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('InputsScreen'),
        ),
        body: SingleChildScrollView(
          //para formularios y hacer scroll
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 50), //los bordes
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Usuario:',
                    hintText: 'Nombre de usuario',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ), //separacion de caja
                  CustomInputField(
                    labelText: 'Apellido:',
                    hintText: 'Apellido de usuario',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ), //separacion de caja
                  CustomInputField(
                    labelText: 'Email:',
                    hintText: 'Email de usuario',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ), //separacion de caja
                  CustomInputField(
                    labelText: 'Password:',
                    hintText: 'Password de usuario',
                    isPassword: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ), //separacion de caja
                  DropdownButtonFormField(items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Administrador'),
                    ),
                    DropdownMenuItem(
                      value: 'Super',
                      child: Text('Supervisor'),
                    ),
                    DropdownMenuItem(
                      value: 'Usuario',
                      child: Text('Usuario'),
                    )
                  ], onChanged: (value){
                    print(value);
                    formValues['role']= value?? 'Administrador'; //definir si viene vacio que tome el primero valor
                  }),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Text('Enviar'),
                        )),
                    onPressed: () {
                      FocusScope.of(context)
                          .requestFocus(FocusNode()); //para ocultar el teclado
                      if (!myFormKey.currentState!.validate()) {
                        print('Formularion no valido');
                        return;
                      }
                      print(formValues);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
