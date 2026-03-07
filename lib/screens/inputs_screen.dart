import 'package:componentes_flutter/themes/app_theme.dart';
import 'package:componentes_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
   
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {

  final _formKey = GlobalKey<FormState>();
  bool isFormValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: _formKey,
            onChanged: (){
              setState(() {
                isFormValid = _formKey.currentState?.validate() ?? false;
              });
            },
            child: Column(
              children: [
                CustomInput(
                  keyboardTypeValue: TextInputType.text, 
                  obscureTextValue: false, 
                  hintTextValue: 'Nombre', 
                  labelTextValue: 'Escribe tu nombre',
                  validatorValue: (value) {
                    if (value == null || value.isEmpty){
                      return 'Este campo es requerido';
                    }
                    return null;
                  },
                ),
                CustomInput(
                  keyboardTypeValue: TextInputType.text, 
                  obscureTextValue: false, 
                  hintTextValue: 'Apellido', 
                  labelTextValue: 'Escribe tu apellido',
                  validatorValue: (value) {
                    if (value == null || value.isEmpty){
                      return 'Este campo es requerido';
                    }
                    return null;
                  },
                ),
                CustomInput(
                  keyboardTypeValue: TextInputType.emailAddress, 
                  obscureTextValue: false, 
                  hintTextValue: 'Correo electrónico', 
                  labelTextValue: 'Escribe tu correo',
                  validatorValue: (value) {
                    if (!value!.contains('@')){
                      return 'Ingrese un email valido';
                    }
                  },
                ),
                 const CustomInput(
                  keyboardTypeValue: TextInputType.text, 
                  obscureTextValue: true, 
                  hintTextValue: 'Contraseña', 
                  labelTextValue: 'Escribe tu contraseña'
                ),
                const CustomInput(
                  keyboardTypeValue: TextInputType.text, 
                  obscureTextValue: true, 
                  hintTextValue: 'Confirmar contraseña', 
                  labelTextValue: 'Confirma tu contraseña'
                ),
                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(
                      value: 'user',
                      child: Text('Usuario')
                    ),
                    DropdownMenuItem(
                      value: 'admin',
                      child: Text('Administrador')
                    )
                  ], 
                  onChanged: (value) {

                  },
                  autovalidateMode: AutovalidateMode.onUnfocus,
                  validator: (value){
                    if(value == null){
                      return 'Selecciona un rol';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                FilledButton(
                  onPressed: isFormValid == true ? (){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Registro exitoso.'),
                        action: SnackBarAction(
                          label: 'Aceptar', 
                          onPressed: (){}
                        ),
                      )
                    );
                  } : null, 
                  child: const Text('Registrarse')
                )
              ],
            )
          ),
        )
      ),
    );
  }
}

