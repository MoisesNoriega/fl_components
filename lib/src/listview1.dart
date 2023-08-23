import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);
  final optios = const [
    'Los Angeles',
    'Boston',
    'Chicago',
    'Milwoki',
    'Broklin'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View Tipo 1'),
        ),
        body: ListView(
          children: <Widget>[
            ...optios
                .map(
                  (coutry) => ListTile(
                    leading: const Icon(
                      Icons.person_pin_circle_outlined,
                      color: AppTheme.primary,
                    ),
                    title: Text(coutry),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                )
                .toList()
          ],
        ));
  }
}
