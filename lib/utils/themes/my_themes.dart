import 'package:flutter/material.dart';

class MyThemes {

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold
      )
    ),
    cardTheme: CardTheme(
      elevation: 1,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))
      )
    ),
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark(),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold
        )
    ),
    cardTheme: CardTheme(
      elevation: 1,
      color: Colors.black87,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))
      )
    ),
  );

}