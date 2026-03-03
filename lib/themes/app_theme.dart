import 'package:flutter/material.dart';

class AppTheme {
  //Color primary de nuestra app
  static Color? primary = Colors.indigoAccent;
  static Color? primaryDarker = Colors.indigoAccent[700];

  static ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarThemeData(backgroundColor: primary, centerTitle: true),

    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(primary),
        foregroundColor: WidgetStatePropertyAll(Colors.black),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(foregroundColor: WidgetStatePropertyAll(primary)),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      foregroundColor: Colors.white,
    ),

    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary!, width: 3),
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        ),
      ),
    ),
  );
}
