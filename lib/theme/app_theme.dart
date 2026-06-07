import 'package:flutter/material.dart';

class AppTheme {
  static const Color butterYellow = Color(0xFFFFD93D);
  static const Color white = Color(0xFFFFFFFF);
  static const Color darkText = Color(0xFF333333);
  static const Color lightGray = Color(0xFFF5F5F5);
  static const Color borderGray = Color(0xFFE0E0E0);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: butterYellow,
      scaffoldBackgroundColor: white,
      appBarTheme: const AppBarTheme(
        backgroundColor: butterYellow,
        foregroundColor: darkText,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: butterYellow,
          foregroundColor: darkText,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: butterYellow,
          side: const BorderSide(color: butterYellow),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: lightGray,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: borderGray),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: borderGray),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: butterYellow, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
}