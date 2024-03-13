import 'package:flutter/material.dart';

class AppTheme{
  
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme =ThemeData.light().copyWith(

    primaryColor: Colors.indigo,

    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: primary)
  ),

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: primary,
    elevation: 5
  ),

 elevatedButtonTheme : ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.indigo,
    shape: const StadiumBorder(),
    elevation: 0
  ),
)

  );
}