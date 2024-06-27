import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color.fromRGBO(247, 247, 249, 1),
    appBarTheme: const AppBarTheme(color: Color.fromRGBO(247, 247, 249, 1)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
    ),
  );
}

class AppColors {
  AppColors._();

  static const white = Colors.white;
  static const darkGrey = Color.fromRGBO(112, 123, 129, 1);
  static const primary = Color.fromRGBO(3, 110, 253, 1);
  static const black = Colors.black;
}
