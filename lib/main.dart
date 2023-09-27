/*
*  /$$$$$$$$                                     /$$$$$$$                     /$$       /$$
| $$_____/                                    | $$__  $$                   | $$      |__/
| $$        /$$$$$$   /$$$$$$$ /$$   /$$      | $$  \ $$ /$$$$$$   /$$$$$$ | $$   /$$ /$$ /$$$$$$$   /$$$$$$
| $$$$$    |____  $$ /$$_____/| $$  | $$      | $$$$$$$/|____  $$ /$$__  $$| $$  /$$/| $$| $$__  $$ /$$__  $$
| $$__/     /$$$$$$$|  $$$$$$ | $$  | $$      | $$____/  /$$$$$$$| $$  \__/| $$$$$$/ | $$| $$  \ $$| $$  \ $$
| $$       /$$__  $$ \____  $$| $$  | $$      | $$      /$$__  $$| $$      | $$_  $$ | $$| $$  | $$| $$  | $$
| $$$$$$$$|  $$$$$$$ /$$$$$$$/|  $$$$$$$      | $$     |  $$$$$$$| $$      | $$ \  $$| $$| $$  | $$|  $$$$$$$
|________/ \_______/|_______/  \____  $$      |__/      \_______/|__/      |__/  \__/|__/|__/  |__/ \____  $$
                               /$$  | $$                                                            /$$  \ $$
                              |  $$$$$$/                                                           |  $$$$$$/
                               \______/                                                             \______/
* */

import 'package:easy_parking_app/config/routes/router.dart';
import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'config/themes/themes.dart';
import 'core/user/api/dio_helper.dart';
import 'core/user/cache/cache_helper.dart';
import 'generated/l10n.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  CacheHelper.init();
  runApp(const EasyParkingApp());
}

class EasyParkingApp extends StatelessWidget {
  const EasyParkingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return SafeArea(
          child: MaterialApp(
            initialRoute: RoutePath.login,
            onGenerateRoute: generateRoute,
            locale: const Locale('en', 'US'),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            debugShowCheckedModeBanner: false,
            theme: Style.lightTheme,
            darkTheme: Style.darkTheme,
            themeMode: ThemeMode.dark,
          ),
        );
      },
    );
  }
}

bool isArabic() => Intl.getCurrentLocale() == 'ar_EG';
