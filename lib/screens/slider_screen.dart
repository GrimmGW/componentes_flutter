import 'package:componentes_flutter/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  
  double _sliderValue = 50;
  bool _isActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider y Checks'),
      ),
      body: Column(
        children: [
          Slider(
            min: 0,
            max: 100,
            value: _sliderValue, 
            onChanged: _isActive == true ? (value){
              setState(() {
                // print(value);
                _sliderValue = value;
              });
            } : null
          ),
          SwitchListTile(
            title: Text('Términos y condiciones', style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Al tocar esta casilla, estarás aceptando los términos y condiciones de la app.'),
            value: _isActive, 
            onChanged: (value){
              setState(() {
                _isActive = value;
              });
            }
            
          )
        ],
      )
    );
  }
}