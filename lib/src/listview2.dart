import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);
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
          title: const Text('List View Tipo 2'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.person_pin_circle_outlined,
                      color: AppTheme.primary),
                  title: Text(optios[index]),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    //final coutry= optios[index];
                    //print(coutry);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: optios.length));
  }
}
