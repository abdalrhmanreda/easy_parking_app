import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/ui/admin/feature/insert_garage/presentation/screens/garage_feature.dart';
import 'package:easy_parking_app/ui/user/features/authentication/presentation/screens/forget_pass_screen/screens/forget_pass_screen.dart';
import 'package:easy_parking_app/ui/user/features/authentication/presentation/screens/forget_pass_screen/screens/otp_screen.dart';
import 'package:easy_parking_app/ui/user/features/authentication/presentation/screens/forget_pass_screen/screens/reset_pass_screen.dart';
import 'package:easy_parking_app/ui/user/features/authentication/presentation/screens/register_screen/presentation/screens/register_screen.dart';
import 'package:easy_parking_app/ui/user/features/authentication/presentation/screens/vechicle_details/screens/vechicle_details.dart';
import 'package:easy_parking_app/ui/user/features/enable_location/presentation/screens/enable_location_screen.dart';
import 'package:easy_parking_app/ui/user/features/user/presentation/screens/profile_screen.dart';
import 'package:easy_parking_app/ui/user/intro_screens/screens/on_boarding_screen.dart';
import 'package:easy_parking_app/ui/user/layout/layout_screen.dart';
import 'package:flutter/material.dart';

import '../../ui/admin/feature/insert_garage/presentation/screens/add_garage_details_screen.dart';
import '../../ui/user/features/authentication/presentation/screens/login_screen/presentation/screens/login_screen.dart';
import '../../ui/user/features/maps/home/presentation/screens/home_screen.dart';

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
    case RoutePath.register:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const RegisterScreen());
    case RoutePath.layout:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const LayoutScreen());
    case RoutePath.home:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const HomeScreen());
    case RoutePath.profile:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const ProfileScreen());
    case RoutePath.vechicleDetails:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const VechicleDetailsScreen());

    //----------------------------------- Admin ------------------------------------
    case AdminRoutePath.addGarage:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => AddGarageDetailsScreen());
    case AdminRoutePath.garageFeature:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => GarageFeatureScreen());
  }
}
