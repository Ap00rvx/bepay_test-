import 'package:flutter/material.dart';

class AppTheme {
  // Color palette
  static const Color _primaryBlack = Color(0xFF000000);
  static const Color _primaryWhite = Color(0xFFFFFFFF);
  static const Color _lightGrey = Color(0xFFF5F5F5);
  static const Color _mediumGrey = Color(0xFF9E9E9E);
  static const Color _darkGrey = Color(0xFF424242);
  static const Color _charcoal = Color(0xFF212121);

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: _primaryBlack,
      scaffoldBackgroundColor: _primaryWhite,
      visualDensity: VisualDensity.adaptivePlatformDensity,

      // Color scheme
      colorScheme: const ColorScheme.light(
        primary: _primaryBlack,
        secondary: _darkGrey,
        surface: _primaryWhite,
        background: _lightGrey,
        error: Colors.red,
        onPrimary: _primaryWhite,
        onSecondary: _primaryWhite,
        onSurface: _primaryBlack,
        onBackground: _primaryBlack,
        onError: _primaryWhite,
      ),

      // AppBar theme
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: _primaryWhite,
        foregroundColor: _primaryBlack,
        iconTheme: IconThemeData(color: _primaryBlack),
        titleTextStyle: TextStyle(
          color: _primaryBlack,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),

      // Card theme
      cardTheme: const CardThemeData(
        color: _primaryWhite,
        elevation: 2,
        shadowColor: _mediumGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),

      // Button themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _primaryBlack,
          foregroundColor: _primaryWhite,
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: _primaryBlack,
          side: const BorderSide(color: _primaryBlack),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: _primaryBlack),
      ),

      // Input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _mediumGrey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _mediumGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _primaryBlack, width: 2),
        ),
        fillColor: _lightGrey,
        filled: true,
      ),

      // Text theme
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: _primaryBlack,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          color: _primaryBlack,
          fontWeight: FontWeight.bold,
        ),
        displaySmall: TextStyle(
          color: _primaryBlack,
          fontWeight: FontWeight.bold,
        ),
        headlineLarge: TextStyle(
          color: _primaryBlack,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: _primaryBlack,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: _primaryBlack,
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: _primaryBlack,
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: _primaryBlack,
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: _primaryBlack,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(color: _primaryBlack),
        bodyMedium: TextStyle(color: _primaryBlack),
        bodySmall: TextStyle(color: _mediumGrey),
        labelLarge: TextStyle(color: _primaryBlack),
        labelMedium: TextStyle(color: _primaryBlack),
        labelSmall: TextStyle(color: _mediumGrey),
      ),

      // Icon theme
      iconTheme: const IconThemeData(color: _primaryBlack),

      // Divider theme
      dividerTheme: const DividerThemeData(color: _mediumGrey, thickness: 1),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: _primaryWhite,
      scaffoldBackgroundColor: _primaryBlack,
      visualDensity: VisualDensity.adaptivePlatformDensity,

      // Color scheme
      colorScheme: const ColorScheme.dark(
        primary: _primaryWhite,
        secondary: _lightGrey,
        surface: _charcoal,
        background: _primaryBlack,
        error: Colors.red,
        onPrimary: _primaryBlack,
        onSecondary: _primaryBlack,
        onSurface: _primaryWhite,
        onBackground: _primaryWhite,
        onError: _primaryWhite,
      ),

      // AppBar theme
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: _primaryBlack,
        foregroundColor: _primaryWhite,
        iconTheme: IconThemeData(color: _primaryWhite),
        titleTextStyle: TextStyle(
          color: _primaryWhite,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),

      // Card theme
      cardTheme: const CardThemeData(
        color: _charcoal,
        elevation: 2,
        shadowColor: _primaryBlack,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),

      // Button themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _primaryWhite,
          foregroundColor: _primaryBlack,
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: _primaryWhite,
          side: const BorderSide(color: _primaryWhite),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: _primaryWhite),
      ),

      // Input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _mediumGrey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _mediumGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _primaryWhite, width: 2),
        ),
        fillColor: _charcoal,
        filled: true,
      ),

      // Text theme
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: _primaryWhite,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          color: _primaryWhite,
          fontWeight: FontWeight.bold,
        ),
        displaySmall: TextStyle(
          color: _primaryWhite,
          fontWeight: FontWeight.bold,
        ),
        headlineLarge: TextStyle(
          color: _primaryWhite,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: _primaryWhite,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: _primaryWhite,
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: _primaryWhite,
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: _primaryWhite,
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: _primaryWhite,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(color: _primaryWhite),
        bodyMedium: TextStyle(color: _primaryWhite),
        bodySmall: TextStyle(color: _mediumGrey),
        labelLarge: TextStyle(color: _primaryWhite),
        labelMedium: TextStyle(color: _primaryWhite),
        labelSmall: TextStyle(color: _mediumGrey),
      ),

      // Icon theme
      iconTheme: const IconThemeData(color: _primaryWhite),

      // Divider theme
      dividerTheme: const DividerThemeData(color: _mediumGrey, thickness: 1),
    );
  }
}
