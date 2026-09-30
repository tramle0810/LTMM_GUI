import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color navy = Color(0xFF102A43);
  static const Color navyLight = Color(0xFF243B53);

  static const Color blue = Color(0xFF486581);
  static const Color blueLight = Color(0xFFDCEAF7);

  static const Color background = Color(0xFFF5F7FA);
  static const Color card = Color(0xFFFFFFFF);

  static const Color text = Color(0xFF102A43);
  static const Color textLight = Color(0xFF627D98);

  static const Color border = Color(0xFFE4EAF0);

  static const Color success = Color(0xFF2F855A);
  static const Color danger = Color(0xFFC53030);
}

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.background,

    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.navy,
      brightness: Brightness.light,
    ),

    textTheme: GoogleFonts.dmSansTextTheme().copyWith(
      displayLarge: GoogleFonts.dmSans(
        fontWeight: FontWeight.w700,
        color: AppColors.text,
      ),
      displayMedium: GoogleFonts.dmSans(
        fontWeight: FontWeight.w700,
        color: AppColors.text,
      ),
      headlineLarge: GoogleFonts.dmSans(
        fontWeight: FontWeight.w700,
        color: AppColors.text,
      ),
      headlineMedium: GoogleFonts.dmSans(
        fontWeight: FontWeight.w700,
        color: AppColors.text,
      ),
      titleLarge: GoogleFonts.dmSans(
        fontWeight: FontWeight.w700,
        color: AppColors.text,
      ),
      titleMedium: GoogleFonts.dmSans(
        fontWeight: FontWeight.w600,
        color: AppColors.text,
      ),
      bodyLarge: GoogleFonts.dmSans(
        fontWeight: FontWeight.w400,
        color: AppColors.text,
      ),
      bodyMedium: GoogleFonts.dmSans(
        fontWeight: FontWeight.w400,
        color: AppColors.textLight,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(
          color: AppColors.border,
        ),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(
          color: AppColors.border,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(
          color: AppColors.navy,
          width: 1.5,
        ),
      ),

      contentPadding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 17,
      ),
    ),
  );
}
