import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/user/methods/get_current_local.dart';

class Style {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: const Color(AppColors.kScaffoldColor),
    colorScheme: ThemeData()
        .colorScheme
        .copyWith(primary: const Color(AppColors.kPrimaryColor)),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(AppColors.kScaffoldColor),
      elevation: 0,
      titleTextStyle: GoogleFonts.aBeeZee(
        color: Colors.black,
        fontSize: 16.sp,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.aBeeZee(
        color: const Color(AppColors.kPrimaryColor),
      ),
      bodyMedium: isArabic()
          ? GoogleFonts.elMessiri()
          : GoogleFonts.aBeeZee(
              color: Colors.black,
            ),
      bodySmall: GoogleFonts.aBeeZee(
        color: Colors.black,
      ),
      titleLarge: GoogleFonts.aBeeZee(
        color: const Color(AppColors.kPrimaryColor),
      ),
      titleMedium: GoogleFonts.aBeeZee(
        color: Colors.black,
      ),
      titleSmall: GoogleFonts.aBeeZee(
        color: Colors.black,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(AppColors.kPrimaryColor),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Color(AppColors.kPrimaryColor),
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          GoogleFonts.aBeeZee(
            color: const Color(
              AppColors.kPrimaryColor,
            ),
          ),
        ),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(AppColors.kDarkThemColor),
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: const Color(AppColors.kDarkThemColor),
          onSurface: Colors.white,
          onPrimary: Colors.white, // body text color
        ),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(AppColors.kDarkThemColor),
      elevation: 0,
      titleTextStyle: GoogleFonts.aBeeZee(
        color: Colors.white,
        fontSize: 18.sp,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      actionsIconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.aBeeZee(
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.aBeeZee(
        color: Colors.white,
      ),
      bodySmall: GoogleFonts.aBeeZee(
        color: Colors.white,
      ),
      titleLarge: GoogleFonts.aBeeZee(
        color: const Color(
          AppColors.kPrimaryColor,
        ),
      ),
      titleMedium: GoogleFonts.aBeeZee(
        color: Colors.white,
      ),
      titleSmall: GoogleFonts.aBeeZee(
        color: Colors.black,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(AppColors.kPrimaryColor),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Color(AppColors.kPrimaryColor),
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(AppColors.kDarkThemColor),
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: Colors.white,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          GoogleFonts.aBeeZee(
            color: Colors.white,
          ),
        ),
      ),
    ),
    datePickerTheme: DatePickerThemeData(
      backgroundColor: const Color(AppColors.kDarkThemColor),
      headerHeadlineStyle: GoogleFonts.aBeeZee(color: Colors.white),
      headerHelpStyle: GoogleFonts.aBeeZee(color: Colors.white),
      dayStyle: GoogleFonts.aBeeZee(color: Colors.white),
      rangePickerHeaderHeadlineStyle: GoogleFonts.aBeeZee(color: Colors.white),
      rangePickerHeaderHelpStyle: GoogleFonts.aBeeZee(color: Colors.white),
      yearStyle: GoogleFonts.aBeeZee(color: Colors.white),
      weekdayStyle: GoogleFonts.aBeeZee(color: Colors.white),
      surfaceTintColor: Colors.white,
    ),
    timePickerTheme: const TimePickerThemeData(
      backgroundColor: Color(AppColors.kDarkThemColor),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  );
}
