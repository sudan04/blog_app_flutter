import 'package:blog_app/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    colorScheme: const ColorScheme.dark(
      primary: AppPallete.gradient1,
      secondary: AppPallete.gradient2,
      surface: AppPallete.backgroundColor,
      error: AppPallete.errorColor,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: AppPallete.backgroundColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: AppPallete.whiteColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: AppPallete.whiteColor),
    ),

    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: AppPallete.whiteColor,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        color: AppPallete.whiteColor,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(color: AppPallete.whiteColor, fontSize: 16),
      bodyMedium: TextStyle(color: AppPallete.greyColor, fontSize: 14),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppPallete.backgroundColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 27),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppPallete.borderColor, width: 1.5),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppPallete.gradient2, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppPallete.errorColor, width: 1.5),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppPallete.errorColor, width: 2),
      ),
      hintStyle: const TextStyle(color: AppPallete.greyColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppPallete.gradient1,
        foregroundColor: AppPallete.whiteColor,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),
    cardTheme: CardThemeData(
      color: AppPallete.borderColor,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: AppPallete.borderColor, width: 1),
      ),
    ),
    iconTheme: const IconThemeData(color: AppPallete.gradient2, size: 24),
    dividerTheme: const DividerThemeData(
      color: AppPallete.borderColor,
      thickness: 1,
    ),
    chipTheme: ChipThemeData(
      backgroundColor: AppPallete.borderColor,
      labelStyle: const TextStyle(color: AppPallete.whiteColor),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppPallete.backgroundColor,
      selectedItemColor: AppPallete.gradient2,
      unselectedItemColor: AppPallete.greyColor,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
    ),
  );
}
