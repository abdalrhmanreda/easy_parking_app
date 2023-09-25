import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/ui/user/features/authentication/presentation/screens/forget_pass_screen/screens/forget_pass_screen.dart';
import 'package:easy_parking_app/ui/user/features/authentication/presentation/screens/forget_pass_screen/screens/otp_screen.dart';
import 'package:easy_parking_app/ui/user/features/authentication/presentation/screens/forget_pass_screen/screens/reset_pass_screen.dart';
import 'package:easy_parking_app/ui/user/features/enable_location/presentation/screens/enable_location_screen.dart';
import 'package:easy_parking_app/ui/user/intro_screens/screens/on_boarding_screen.dart';
import 'package:flutter/material.dart';

import '../../ui/user/features/authentication/presentation/screens/login_screen/presentation/screens/login_screen.dart';

Route? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => Container());
    case RoutePath.onBoarding:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const OnBoardingScreen());
    case RoutePath.enableLocation:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const EnableLocationScreen());
    case RoutePath.login:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const LoginScreen());
    case RoutePath.forgetPass:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const ForgetPassScreen());
    case RoutePath.otp:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const OTPScreen());
    case RoutePath.resetPass:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const ResetPasswordScreen());
  }
}
