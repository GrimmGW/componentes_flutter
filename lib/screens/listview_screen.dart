import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  final videojuegos = const ['Starfield', 'Hytale', 'Resident Evil Village', 'Forza Horizon 5'];
   
  const ListviewScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview'),
      ),
      body: ListView(
        children: [
          //spread
          ...videojuegos.map(
            (juego) => ListTile(
              title: Text(juego),
              leading: const Icon(Icons.gamepad_rounded),
              subtitle: const Text('Soy un subtitulo'),
            )
          )
        ],
      )
    );
  }
}