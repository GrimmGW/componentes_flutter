import 'package:componentes_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas/Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          const CustomCard1(
            leading: Icons.star_rounded, 
            title: 'Soy un custom Widget', 
            subtitle: 'Mira este nuevo subtitulo',
          ),
          const CustomCard1(
            leading: Icons.gamepad_rounded,
            title: 'Widget custom sobre videojuegos',
            subtitle: 'Pequeño subtitulo',
          ),

          CustomCard2(
            url: 'https://static.vecteezy.com/system/resources/previews/050/808/455/large_2x/a-panoramic-view-of-the-mountains-and-lake-beautiful-landscape-stunning-natural-landscape-photo.jpeg',
            title: 'Un bonito paisaje',
            subtitle: 'Eiusmod exercitation ex adipisicing deserunt incididunt.',
          ),
          CustomCard2(
            url: 'https://i.natgeofe.com/n/2a832501-483e-422f-985c-0e93757b7d84/6.jpg',
            title: 'Un bello atardecer',
            subtitle: 'Proident culpa consequat proident ut do cupidatat do proident eu proident amet.',
          ),

          CustomCard2(
            url: 'https://i.natgeofe.com/n/2a832501-483e-422f-985c-0e93757b7d84/6.jpg',
            title: '',
            subtitle: '',
          ),
        ],
      )
    );
  }
}