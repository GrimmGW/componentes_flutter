import 'package:flutter/material.dart';
import 'dart:math';

class ContainerScreen extends StatefulWidget {
   
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {

  double _height = 100;
  double _width = 100;
  Color? _color = Colors.green;

  void changeShape(){
    final random = Random();
    _height = random.nextInt(300).toDouble() + 70;
    _width = random.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
      random.nextInt(255), 
      random.nextInt(255), 
      random.nextInt(255), 
      1
    );

    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Center(
         child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.bounceOut,
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(16)
          ),
         )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          changeShape();
        },
        child: const Icon(Icons.shuffle_rounded),
      ),
    );
  }
}