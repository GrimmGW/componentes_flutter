import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {

  void displayDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, builder: (context){
      return AlertDialog(
        icon: const Icon(Icons.warning_rounded),
        title: const Text('Esta es una alerta'),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Eu magna Lorem quis amet nulla consectetur esse ut est consectetur.')
          ],
        ),
        actions: [
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            }, 
            child: const Text('Aceptar')
          )
        ],
      );
    });
  }
  
  const AlertScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla de Alertas'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
         child: FilledButton(
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.indigoAccent),
          ),
          onPressed: (){
            displayDialog(context);
          }, 
          child: const Text('Pulsa aqui')
        ),
      ),
    );
  }
}
