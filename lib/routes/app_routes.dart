import 'package:componentes_flutter/models/menu_options.dart';
import 'package:componentes_flutter/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const intialRoute = '/home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: '/listview', icon: Icons.list_alt_rounded, name: 'Pantalla de Listview', screen: const ListviewScreen()),
    MenuOptions(route: '/alert', icon: Icons.warning_rounded, name: 'Pantalla de Alertas', screen: const AlertScreen()),
    MenuOptions(route: '/card', icon: Icons.card_membership_rounded, name: 'Pantalla de Cards', screen: const CardScreen()),
    MenuOptions(route: '/avatar', icon: Icons.person_2_rounded, name: 'Pantalla de Avatar', screen: const AvatarScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    '/listview' : (BuildContext context) => const ListviewScreen(),
    '/home' : (BuildContext context) => const HomeScreen(),
    '/alert' : (BuildContext context) => const AlertScreen(),
    '/card' : (BuildContext context) => const CardScreen(),
    '/avatar' : (BuildContext context) => const AvatarScreen()
  };
}