/*
░█████╗░ ██████╗░██████╗░░█████╗░██╗░░░░░██████╗░░█████╗░██╗░░██╗███╗░░░███╗░█████╗░███╗░░██╗
██╔══██╗ ██╔══██╗██╔══██╗██╔══██╗██║░░░░░██╔══██╗██╔══██╗██║░░██║████╗░████║██╔══██╗████╗░██║
███████║ ██████╦╝██║░░██║███████║██║░░░░░██████╔╝███████║███████║██╔████╔██║███████║██╔██╗██║
██╔══██║ ██╔══██╗██║░░██║██╔══██║██║░░░░░██╔══██╗██╔══██║██╔══██║██║╚██╔╝██║██╔══██║██║╚████║
██║░░██║ ██████╦╝██████╔╝██║░░██║███████╗██║░░██║██║░░██║██║░░██║██║░╚═╝░██║██║░░██║██║░╚███║
╚═╝░░╚═╝ ╚═════╝░╚═════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝
*/

import 'package:easy_parking_app/ui/admin/cubit/admin_cubit.dart';
import 'package:easy_parking_app/ui/user/cubit/app_cubit.dart';
import 'package:easy_parking_app/ui/user/cubit/observer/blocObserver.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'config/routes/router.dart';
import 'config/routes/routes_path.dart';
import 'config/themes/themes.dart';
import 'core/user/api/dio_helper.dart';
import 'core/user/cache/cache_helper.dart';
import 'generated/l10n.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
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
          child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => AppCubit()),
              BlocProvider(create: (context) => AdminCubit()),
            ],
            child: MaterialApp(
              initialRoute: AdminRoutePath.addGarage,
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
              themeMode: ThemeMode.light,
            ),
          ),
        );
      },
    );
  }
}

bool isArabic() => Intl.getCurrentLocale() == 'ar_EG';
