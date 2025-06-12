import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/theme/dark_color.dart';
import 'package:portfolio/core/constants/theme/light_color.dart';

class MyThemes {
  static ThemeData lightTheme() {
    return ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: LightColor.backgroundBoxColor,
          textStyle: TextStyle(

          ),
        ),
      ),
      iconTheme: IconThemeData(

        color:LightColor.iconSliderUnSelect ,

      ),
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          color: LightColor.textAppBar,
        ),
        backgroundColor:LightColor.backgroundScaffoldColor ,

      ),
      scaffoldBackgroundColor: LightColor.backgroundScaffoldColor,
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: DarkColor.backgroundBoxColor,
          textStyle: TextStyle(

          ),
        ),
      ),
      iconTheme: IconThemeData(
        color: DarkColor.iconSliderUnSelect,
        size: 22.0,
      ),
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          color: DarkColor.textAppBar,

        ),
        backgroundColor: DarkColor.backgroundScaffoldColor,
      ),
      scaffoldBackgroundColor: DarkColor.backgroundScaffoldColor,
    );
  }
}
