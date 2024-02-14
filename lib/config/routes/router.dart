import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/ui/admin/feature/garages/screens/garage_places.dart';
import 'package:easy_parking_app/ui/admin/feature/garages/screens/get_all_garage.dart';
import 'package:easy_parking_app/ui/admin/feature/insert_garage/presentation/screens/garage_feature.dart';
import 'package:easy_parking_app/ui/user/features/authentication/screens/add_car_detail/add_car_details.dart';
import 'package:easy_parking_app/ui/user/features/booking/screens/booking_summary_screen.dart';
import 'package:easy_parking_app/ui/user/features/center_help/screens/help_center_screen.dart';
import 'package:easy_parking_app/ui/user/features/enable_location/presentation/screens/enable_location_screen.dart';
import 'package:easy_parking_app/ui/user/features/extending_time/screens/extend_parking_timing.dart';
import 'package:easy_parking_app/ui/user/features/notification/screens/notification_screen.dart';
import 'package:easy_parking_app/ui/user/features/payment/screens/payment_methods_screen.dart';
import 'package:easy_parking_app/ui/user/features/ticket/screens/go_to_parking_lot.dart';
import 'package:easy_parking_app/ui/user/features/ticket/screens/parking_timer.dart';
import 'package:easy_parking_app/ui/user/features/user/presentation/screens/edit_profile.dart';
import 'package:easy_parking_app/ui/user/features/user/presentation/screens/profile_screen.dart';
import 'package:easy_parking_app/ui/user/intro_screens/screens/on_boarding_screen.dart';
import 'package:easy_parking_app/ui/user/layout/layout_screen.dart';
import 'package:flutter/material.dart';

import '../../ui/admin/feature/insert_garage/presentation/screens/add_garage_details_screen.dart';
import '../../ui/user/features/authentication/screens/forget_pass_screen/forget_pass_screen.dart';
import '../../ui/user/features/authentication/screens/forget_pass_screen/otp_screen.dart';
import '../../ui/user/features/authentication/screens/forget_pass_screen/reset_pass_screen.dart';
import '../../ui/user/features/authentication/screens/login_screen/login_screen.dart';
import '../../ui/user/features/authentication/screens/register_screen/register_screen.dart';
import '../../ui/user/features/booking/screens/garage_derails.dart';
import '../../ui/user/features/booking/screens/select_booking_date_screen.dart';
import '../../ui/user/features/booking/screens/type_of_vehicle_screen.dart';
import '../../ui/user/features/maps/home/screens/home_screen.dart';
import '../../ui/user/features/ticket/screens/parking_ticket.dart';

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
    case RoutePath.selectBookingDate:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const SelectBookingDateScreen());
    case RoutePath.typeOfVehicle:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const TypeOfVehicleScreen());
    case RoutePath.garageDetails:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const GarageDetailsScreen());
    case RoutePath.bookingSummary:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const BookingSummaryScreen());
    case RoutePath.paymentMethods:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const PaymentMethodsScreen());
    case RoutePath.parkingTicket:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const ParkingTicketScreen());
    case RoutePath.goToParkingLot:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const GoToParkingLotScreen());
    case RoutePath.parkingTimer:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const ParkingTimerScreen());
    case RoutePath.helpCenter:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const HelpAndSupportScreen());
    case RoutePath.notification:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const NotificationScreen());
    case RoutePath.extendParking:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const ExtendParkingTimingScreen());
    case RoutePath.carDetails:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const AddCarDetailsScreen());
    case RoutePath.editProfile:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const EditProfile());
    //----------------------------------- Admin ------------------------------------
    case AdminRoutePath.addGarage:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const AddGarageDetailsScreen());
    case AdminRoutePath.garageFeature:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const GarageFeatureScreen());
    case AdminRoutePath.getAllGarages:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const GetAllGarageListScreen());
    case AdminRoutePath.garagePlaces:
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const GaragePlacesScreen());
  }
  return null;
}
