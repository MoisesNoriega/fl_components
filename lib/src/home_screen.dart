import 'package:fl_components/router/app_routers.dart';
import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('COMPONENTES'),
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  title: Text(AppRouters.menuOption[i].name),
                  leading:
                      Icon(AppRouters.menuOption[i].icon, color: AppTheme.primary),
                  onTap: () {
/* 
          final route=MaterialPageRoute(builder: (context) => const ListViewScreen(),);
          Navigator.push(context, route); 
          //Navigator.pushReplacement(context, Route);*/
                    Navigator.pushNamed(
                        context, AppRouters.menuOption[i].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRouters.menuOption.length));
  }
}
