import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  final videojuegos = const ['Starfield', 'Hytale', 'Resident Evil Village', 'Forza Horizon 5'];
   
  const ListviewScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView(
        children: [
          //spread
          ...videojuegos.map(
            (juego) => ListTile(
              title: Text(juego),
              leading: Icon(Icons.gamepad_rounded),
              subtitle: Text('Soy un subtitulo'),
            )
          )
        ],
      )
    );
  }
}