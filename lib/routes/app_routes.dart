import 'package:componentes_flutter/models/menu_options.dart';
import 'package:componentes_flutter/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const intialRoute = '/home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: '/listview', icon: Icons.list_alt_rounded, name: 'Pantalla de Listview', screen: const ListviewScreen()),
    MenuOptions(route: '/alert', icon: Icons.warning_rounded, name: 'Pantalla de Alertas', screen: const AlertScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    '/listview' : (BuildContext context) => const ListviewScreen(),
    '/home' : (BuildContext context) => const HomeScreen(),
    '/alert' : (BuildContext context) => const AlertScreen(),
  };
}