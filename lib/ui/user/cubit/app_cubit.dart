import 'package:easy_parking_app/ui/user/cubit/app_state.dart';
import 'package:easy_parking_app/ui/user/features/user/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:geolocator/geolocator.dart';

import '../features/maps/home/presentation/screens/home_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialAppState());
  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  void changeNavBar(int index) {
    currentIndex = index;
    emit(ChangeNavBarState());
  }

  List<Widget> bottomNavigationBarItems = const [
    Icon(IconlyBroken.home),
    Icon(IconlyBroken.bookmark),
    Icon(IconlyBroken.wallet),
    Icon(IconlyBroken.profile),
  ];

  List<Widget> screens = const [
    HomeScreen(),
    HomeScreen(),
    ProfileScreen(),
    ProfileScreen(),
  ];

  late bool servicePermission = false;
  late LocationPermission permission;
  double latitude = 0;
  double longitude = 0;
  Future<Position> getCurrentLocation() async {
    try {
      servicePermission = await Geolocator.isLocationServiceEnabled();
      if (!servicePermission) {
        print('Service Disabled');
      }
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
      Geolocator.getCurrentPosition().then((value) {
        latitude = value.latitude;
        longitude = value.longitude;
        print(value.latitude);
        print(value.longitude);

        emit(GetLatAndLonSuccessState());
      });
      emit(GetLocationSuccessState());
    } catch (error) {
      emit(GetLocationErrorState());
    }
    return await Geolocator.getCurrentPosition();
  }
}
