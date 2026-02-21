import 'package:flutter/material.dart';

class AppTheme {

  //Color primary de nuestra app
  static Color? primary = Colors.indigoAccent;
  static Color? primaryDarker = Colors.indigoAccent[700];

  static ThemeData lightTheme = ThemeData.light().copyWith(

    appBarTheme: AppBarThemeData(
      backgroundColor: primary,
      centerTitle: true,
    ),

    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(primary),
        foregroundColor: WidgetStatePropertyAll(Colors.black)
      )
    ),

    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(primary)
      )
    )

  );

}