import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getx_boilerplate/app/theme/app_color.dart';

class AppTheme {
  static final theme = ThemeData(
    useMaterial3: true,
    fontFamily: 'roboto',
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.white,

    appBarTheme: const AppBarTheme(
      systemOverlayStyle:
      SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
    ),

    cardTheme: CardTheme(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      margin: EdgeInsets.only(top: 12),
    ),

    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: createMaterialColor(AppColors.primaryColor))
        .copyWith(secondary: AppColors.white, onPrimary: AppColors.white),
  );
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
