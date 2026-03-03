import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      keyboardType: TextInputType.text,
      obscureText: false,
      onChanged: (value){
        print("Valor actual: $value");
      },
      validator: (value){
        if ( value == null ) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo 3 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: 'Escribe tu nombre',
        labelText: 'Nombre',
        helperText: 'Solo letras',
        suffixIcon: IconButton(
          onPressed: (){},
          icon: Icon(Icons.remove_red_eye_rounded),
        ),
        //tema
    
      ),
    );
  }
}