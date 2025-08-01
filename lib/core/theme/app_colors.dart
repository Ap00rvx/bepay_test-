import 'package:flutter/material.dart';

/// App color palette following black, white, and grey theme
class AppColors {
  AppColors._(); // Private constructor to prevent instantiation

  // Primary colors
  static const Color primaryBlack = Color(0xFF000000);
  static const Color primaryWhite = Color(0xFFFFFFFF);

  // Grey shades
  static const Color lightGrey = Color(0xFFF5F5F5);
  static const Color mediumGrey = Color(0xFF9E9E9E);
  static const Color darkGrey = Color(0xFF424242);
  static const Color charcoal = Color(0xFF212121);

  // Additional greys for more variety
  static const Color lightestGrey = Color(0xFFFAFAFA);
  static const Color slateGrey = Color(0xFF607D8B);
  static const Color graphite = Color(0xFFF9F7F2);

  // Accent colors (minimal usage)
  static const Color errorRed = Color(0xFFE53E3E);
  static const Color successGreen = Color(0xFF38A169);
  static const Color warningOrange = Color(0xFFED8936);
  static const Color infoBlue = Color(0xFF3182CE);

  // Text colors
  static const Color primaryText = primaryBlack;
  static const Color secondaryText = darkGrey;
  static const Color hintText = mediumGrey;
  static const Color disabledText = lightGrey;

  // Dark theme text colors
  static const Color primaryTextDark = primaryWhite;
  static const Color secondaryTextDark = lightGrey;
  static const Color hintTextDark = mediumGrey;
  static const Color disabledTextDark = darkGrey;

  // Background colors
  static const Color backgroundLight = primaryWhite;
  static const Color backgroundDark = primaryBlack;
  static const Color surfaceLight = lightestGrey;
  static const Color surfaceDark = charcoal;

  // Border colors
  static const Color borderLight = mediumGrey;
  static const Color borderDark = darkGrey;

  // Shadow colors
  static Color shadowLight = primaryBlack.withOpacity(0.1);
  static Color shadowDark = primaryBlack.withOpacity(0.3);
}

/// Extension to easily access theme colors
extension AppColorsExtension on BuildContext {
  /// Get colors based on current theme brightness
  AppColorsTheme get colors => Theme.of(this).brightness == Brightness.dark
      ? AppColorsTheme.dark
      : AppColorsTheme.light;
}

/// Theme-aware color scheme
class AppColorsTheme {
  final Color primary;
  final Color onPrimary;
  final Color surface;
  final Color onSurface;
  final Color background;
  final Color onBackground;
  final Color primaryText;
  final Color secondaryText;
  final Color hintText;
  final Color border;
  final Color shadow;

  const AppColorsTheme({
    required this.primary,
    required this.onPrimary,
    required this.surface,
    required this.onSurface,
    required this.background,
    required this.onBackground,
    required this.primaryText,
    required this.secondaryText,
    required this.hintText,
    required this.border,
    required this.shadow,
  });

  static const AppColorsTheme light = AppColorsTheme(
    primary: AppColors.primaryBlack,
    onPrimary: AppColors.primaryWhite,
    surface: AppColors.surfaceLight,
    onSurface: AppColors.primaryBlack,
    background: AppColors.backgroundLight,
    onBackground: AppColors.primaryBlack,
    primaryText: AppColors.primaryText,
    secondaryText: AppColors.secondaryText,
    hintText: AppColors.hintText,
    border: AppColors.borderLight,
    shadow: AppColors.primaryBlack,
  );

  static const AppColorsTheme dark = AppColorsTheme(
    primary: AppColors.primaryWhite,
    onPrimary: AppColors.primaryBlack,
    surface: AppColors.surfaceDark,
    onSurface: AppColors.primaryWhite,
    background: AppColors.backgroundDark,
    onBackground: AppColors.primaryWhite,
    primaryText: AppColors.primaryTextDark,
    secondaryText: AppColors.secondaryTextDark,
    hintText: AppColors.hintTextDark,
    border: AppColors.borderDark,
    shadow: AppColors.primaryBlack,
  );
}
