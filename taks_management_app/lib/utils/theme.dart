import 'package:flutter/material.dart';

const Color lightDefaultBackgroundColor = Colors.white;
const Color lightDefaultSecundaryColor = Colors.grey;
const Color lightDefaultContrastColor = Color.fromRGBO(11, 137, 254, 1);
const Color lightDefaultCardColor = Color.fromRGBO(11, 137, 254, 1);


class MainTheme {

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: lightDefaultBackgroundColor,
    appBarTheme: _lightAppBarTheme(),
    colorScheme: _lightColorSchemes(),
    errorColor: Colors.white,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: lightDefaultContrastColor
    )
  );

  static _lightColorSchemes() {
    return const ColorScheme.light(
      primary: lightDefaultSecundaryColor,
      secondary: lightDefaultSecundaryColor,
      tertiary: lightDefaultContrastColor,
      background: lightDefaultBackgroundColor,
    );
  }

  static _lightAppBarTheme() {
    return const AppBarTheme(
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 26, color: Colors.black, fontWeight: FontWeight.w400),
        backgroundColor: lightDefaultBackgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: lightDefaultContrastColor),
        actionsIconTheme: IconThemeData(color: lightDefaultContrastColor));
  }
}