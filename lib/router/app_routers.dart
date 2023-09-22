import 'package:fl_components/models/menu_option.dart';
import 'package:fl_components/src/inputs_screen.dart';
import 'package:flutter/material.dart';

import '../src/src.dart';

class AppRouters {
  static const initialRoute = 'homescreen';
  static final menuOption = <MenuOption>[
/*     MenuOption(
        route: 'homescreen',
        name: 'Hoome Screen',
        screen: const HomeScreen(),
        icon: Icons.home), */
    MenuOption(
        route: 'listview1',
        name: 'ListView1',
        screen: const ListViewScreen(),
        icon: Icons.list),
    MenuOption(
        route: 'listview2',
        name: 'ListView2',
        screen: const ListView2Screen(),
        icon: Icons.list_alt_rounded),
    MenuOption(
        route: 'alert',
        name: 'Alert',
        screen: const AlertScreen(),
        icon: Icons.warning),
    MenuOption(
        route: 'card',
        name: 'Card',
        screen: const CardScreen(),
        icon: Icons.card_membership_outlined),
    MenuOption(
        route: 'avatar',
        name: 'Avatar',
        screen: const AvatarScreen(),
        icon: Icons.group_outlined),
    MenuOption(
        route: 'animated',
        name: 'Animated',
        screen: const AnimatedScreen(),
        icon: Icons.animation_outlined),
    MenuOption(
        route: 'inputs',
        name: 'Inputs',
        screen: const InputsScreen(),
        icon: Icons.text_fields_outlined),
    MenuOption(
        route: 'slider',
        name: 'Slider',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'homescreen': (BuildContext context) => const HomeScreen()});

    for (final option in menuOption) {

      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
/* 
  static Map<String, Widget Function(BuildContext)> routes = {
    'homescreen': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListViewScreen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen()
  }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
