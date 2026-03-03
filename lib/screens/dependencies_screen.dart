import 'package:componentes_flutter/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DependenciesScreen extends StatelessWidget {
   
  const DependenciesScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dependencias'),
      ),
      body: const Center(
         child: Text('DependenciesScreen'),
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.black,
        color: Colors.grey,
        activeColor: Colors.white,
        rippleColor: AppTheme.primary!,
        tabBackgroundColor: Colors.indigo,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Inicio',
          ),
          GButton(
            icon: Icons.search_rounded,
            text: 'Buscar',
          ),
          GButton(
            icon: Icons.star_rounded,
            text: 'Favoritos',
          ),
        ]
      ),
    );
  }
}