import 'package:eslami/Utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static const TextStyle appBarTextStyle = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, color: AppColors.black);
  static const TextStyle mediumTitleTextStyle = TextStyle(
      fontSize: 25, fontWeight: FontWeight.w600, color: AppColors.black);
  static const TextStyle regularTitleTextStyle = TextStyle(
      fontSize: 25, fontWeight: FontWeight.w400, color: AppColors.black);

  static TextStyle appBarDarkTextStyle =
  appBarTextStyle.copyWith(color: AppColors.white);
  static TextStyle mediumTitleDarkTextStyle =
  mediumTitleTextStyle.copyWith(color: AppColors.white);
  static TextStyle regularTitleDarkTextStyle =
  regularTitleTextStyle.copyWith(color: Colors.white);


  static ThemeData Dark= ThemeData(
    primaryColor: AppColors.darkBlue,
    scaffoldBackgroundColor: AppColors.transparent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: AppColors.transparent,
      titleTextStyle: appBarTextStyle.copyWith(color:AppColors.white),
    ),
    colorScheme: ColorScheme(
        brightness:Brightness.dark,
        primary: AppColors.darkBlue,
        onPrimary: AppColors.ondarkBlue,
        secondary: AppColors.yellow,
        onSecondary: AppColors.yellow,
        error: AppColors.errorcolor,
        onError: AppColors.errorcolor,
        background: AppColors.transparent,
        onBackground: AppColors.transparent,
        surface: AppColors.transparent,
        onSurface: AppColors.transparent),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor:AppColors.yellow,
          selectedIconTheme: IconThemeData(size: 40),
          unselectedIconTheme: IconThemeData(size: 34)
      )
  );
  static ThemeData light= ThemeData(
    primaryColor: AppColors.brown,
    scaffoldBackgroundColor: AppColors.transparent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: AppColors.transparent,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    ),
    colorScheme: ColorScheme(
        brightness:Brightness.light,
        primary: AppColors.brown,
        onPrimary: AppColors.onbrown,
        secondary: AppColors.black,
        onSecondary: AppColors.black,
        error: AppColors.errorcolor,
        onError: AppColors.errorcolor,
        background: AppColors.transparent,
        onBackground: AppColors.transparent,
        surface: AppColors.transparent,
        onSurface: AppColors.transparent),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor:AppColors.black,
      selectedIconTheme: IconThemeData(size: 40),
      unselectedIconTheme: IconThemeData(size: 34)
    )
  );


}