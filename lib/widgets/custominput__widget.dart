import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {

  final TextInputType keyboardTypeValue;
  final bool obscureTextValue;
  final String hintTextValue;
  final String labelTextValue;
  final String? Function(String?)? validatorValue;

  const CustomInput({
    super.key, 
    required this.keyboardTypeValue, 
    required this.obscureTextValue,
    required this.hintTextValue, 
    required this.labelTextValue, 
    this.validatorValue, 
  });

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {

  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        autofocus: false,
        keyboardType: widget.keyboardTypeValue,
        obscureText: widget.obscureTextValue ? pass : false,
        onChanged: (value){
          print("Valor actual: $value");
        },
        validator: widget.validatorValue,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: widget.hintTextValue,
          labelText: widget.labelTextValue,
          // helperText: 'Solo letras',
          suffixIcon: widget.obscureTextValue == true ?
          IconButton(
            onPressed: (){
              setState(() {
                pass = !pass;
              });
            },
            icon: Icon(
              pass ? Icons.visibility_off : Icons.visibility
            ),
          ) 
          : null,
        ),
      ),
    );
  }
}