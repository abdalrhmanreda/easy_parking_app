/*
░█████╗░ ██████╗░██████╗░░█████╗░██╗░░░░░██████╗░░█████╗░██╗░░██╗███╗░░░███╗░█████╗░███╗░░██╗
██╔══██╗ ██╔══██╗██╔══██╗██╔══██╗██║░░░░░██╔══██╗██╔══██╗██║░░██║████╗░████║██╔══██╗████╗░██║
███████║ ██████╦╝██║░░██║███████║██║░░░░░██████╔╝███████║███████║██╔████╔██║███████║██╔██╗██║
██╔══██║ ██╔══██╗██║░░██║██╔══██║██║░░░░░██╔══██╗██╔══██║██╔══██║██║╚██╔╝██║██╔══██║██║╚████║
██║░░██║ ██████╦╝██████╔╝██║░░██║███████╗██║░░██║██║░░██║██║░░██║██║░╚═╝░██║██║░░██║██║░╚███║
╚═╝░░╚═╝ ╚═════╝░╚═════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝
*/

import 'package:easy_parking_app/core/user/cache/hive_cache.dart';
import 'package:easy_parking_app/core/user/paymob/paymob_api.dart';
import 'package:easy_parking_app/ui/admin/cubit/admin_cubit.dart';
import 'package:easy_parking_app/ui/admin/feature/garages/controller/garage_cubit.dart';
import 'package:easy_parking_app/ui/admin/feature/insert_garage/presentation/controller/insert_garage_cubit.dart';
import 'package:easy_parking_app/ui/user/cubit/app_cubit.dart';
import 'package:easy_parking_app/ui/user/cubit/observer/blocObserver.dart';
import 'package:easy_parking_app/ui/user/features/authentication/screens/login_screen/login_screen.dart';
import 'package:easy_parking_app/ui/user/features/bookmark/controller/book_mark_cubit.dart';
import 'package:easy_parking_app/ui/user/features/enable_location/presentation/controller/enable_location_cubit.dart';
import 'package:easy_parking_app/ui/user/features/ticket/controllers/extend_time_cubit.dart';
import 'package:easy_parking_app/ui/user/intro_screens/screens/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_paymob/flutter_paymob.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/routes/router.dart';
import 'config/routes/routes_path.dart';
import 'config/themes/themes.dart';
import 'core/user/api/dio_helper.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterPaymob.instance.initialize(
    apiKey: PaymobApi
        .paymobApiKey, //  // from dashboard Select Settings -> Account Info -> API Key
    integrationID: PaymobApi
        .paymobIntegrationIdCard, // // from dashboard Select Developers -> Payment Integrations -> Online Card ID
    walletIntegrationId: PaymobApi
        .paymobIntegrationIdWallet, // // from dashboard Select Developers -> Payment Integrations -> Online wallet
    iFrameID: 804387,
  );
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await HiveCache.openHive();
  Widget widget;
  dynamic onBoarding = HiveCache.getData(key: 'onBoarding');
  onBoarding ? widget = const LoginScreen() : widget = const OnBoardingScreen();
  runApp(EasyParkingApp(
    startWidget: widget,
  ));
}

class EasyParkingApp extends StatelessWidget {
  const EasyParkingApp({
    super.key,
    required this.startWidget,
  });
  final Widget startWidget;

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
              BlocProvider(create: (context) => ExtendTimeCubit()),
              BlocProvider(create: (context) => EnableLocationCubit()),
              BlocProvider(create: (context) => GarageCubit()),
              BlocProvider(create: (context) => InsertGarageCubit()),
              BlocProvider(create: (context) => BookMarkCubit()),
            ],
            child: MaterialApp(
              initialRoute: RoutePath.editProfile,
              // home: AdminLayout(),
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
