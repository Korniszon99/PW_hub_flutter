import 'package:flutter/material.dart';

class PWHUB_Theme {
  static final light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,

      primary: const Color(0xFFFB2B5B),
      onPrimary: Colors.white,

      secondary: const Color(0xFFFF9425),
      onSecondary: Colors.black,

      surface: const Color(0xFFFFFCF9),
      onSurface: const Color(0xFF1D1F2A),

      //background: const Color(0xFFFFFCF9),
      //onBackground: const Color(0xFF1D1F2A),

      error: const Color(0xFFB00020),
      onError: Colors.white,
    ),
    scaffoldBackgroundColor: Color(0x00d1d1d1),
  );

  static final dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: const Color(0xFFFF9425),
      onPrimary: Colors.black,

      secondary: const Color(0xFFFB2B5B),
      onSecondary: Colors.white,

      surface: const Color(0xFF1D1F2A),
      onSurface: const Color(0xFFFFFCF9),

      //background: const Color(0xFF1D1F2A),
      //onBackground: const Color(0xFFFFFCF9),

      error: const Color(0xFFCF6679),
      onError: Colors.black,
    ),
    scaffoldBackgroundColor: Color(0x00494949),
  );
}