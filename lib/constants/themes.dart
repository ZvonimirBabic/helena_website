import 'package:flutter/material.dart';

import 'colors.dart';

class Themes {
  /// Light theme
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(color: CustomColors.primaryBlue),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: CustomColors.white.withOpacity(0.2),
        selectedLabelStyle: const TextStyle(color: Colors.white),
        selectedItemColor: CustomColors.white,
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        unselectedItemColor: Colors.white),
    selectedRowColor: Colors.white,
  );

  /// Dark theme
  static final darkTheme = ThemeData();
}
