import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);
  //EJEMPLO EN IOS
  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            //funcion de alerta
            //elevation: 20,
            title: const Text(
              'WARNIN!!!!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red),
            ),
            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),//bordes
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Mensaje de WARNING, descripción previa ...'),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 50,
                )
              ],
            ),
            actions: [
              //acciones dentro de emergente de alertas
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () {
                    //Navigator.pop(context);
                  },
                  child: const Text('Ok'))
            ],
          );
        });
  }

  //EJEMPLO EN ANDROID
  void displayDialogAndroid(BuildContext context) {
    //metodo de alerta
    showDialog(
        barrierDismissible: false, //se cierra si hacemos click afuera
        context: context,
        builder: (context) {
          return AlertDialog(
            //funcion de alerta
            elevation: 20,
            title: const Text(
              'WARNIN!!!!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)), //bordes
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Mensaje de WARNING'),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 50,
                )
              ],
            ),
            actions: [
              //acciones dentro de emergente de alertas
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);//nos redirige
                  },
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () {
                   // Navigator.pop(context);
                  },
                  child: const Text('Ok'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    //construcion de modulo
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert components'),
      ),
      body: Center(
          child: ElevatedButton(
              /* style: ElevatedButton.styleFrom(
            primary: primary, 
            shape:const StadiumBorder(),
            elevation: 25)*/
              //onPressed: ()=> displayDialogAndroid(context),
              onPressed: () => Platform.isAndroid
                  ? displayDialogAndroid(context)
                  : displayDialogIOS(context),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text('Mostrar Warning', style: TextStyle(fontSize: 18)),
              ))),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
