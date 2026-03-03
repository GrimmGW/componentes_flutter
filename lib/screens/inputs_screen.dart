import 'package:componentes_flutter/themes/app_theme.dart';
import 'package:componentes_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            child: Column(
              children: [
                CustomInput(),
                CustomInput(),
                CustomInput(),
                CustomInput(),
              ],
            )
          ),
        )
      ),
    );
  }
}

