import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color.fromRGBO(247, 247, 249, 1),
    appBarTheme: const AppBarTheme(color: Color.fromRGBO(247, 247, 249, 1)),
    iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.white),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(AppColors.primary),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        elevation: const WidgetStatePropertyAll(0),
      ),
    ),
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        minimumSize: WidgetStatePropertyAll(Size(50, 25)),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.darkGrey),
      ),
      hintStyle: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: AppColors.darkerGrey,
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w700,
        color: AppColors.dark,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: TextStyle(
        color: AppColors.white,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      labelSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.primary,
      ),
      displaySmall: TextStyle(
        fontSize: 14,
        color: AppColors.dark,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: AppColors.darkGrey,
      ),
      headlineSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.darkGrey,
      ),
    ),
  );
}

class AppColors {
  AppColors._();

  static const white = Colors.white;
  static const light = Color.fromRGBO(247, 247, 249, 1);
  static const darkGrey = Color.fromRGBO(112, 123, 129, 1);
  static const darkerGrey = Color.fromRGBO(106, 106, 106, 1);
  static const primary = Color.fromRGBO(3, 110, 253, 1);
  static const red = Color.fromRGBO(255, 25, 0, 1);
  static const dark = Color.fromRGBO(43, 43, 43, 1);
  static const black = Colors.black;
}
