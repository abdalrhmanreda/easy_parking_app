import 'package:easy_parking_app/ui/user/cubit/app_state.dart';
import 'package:easy_parking_app/ui/user/features/bookmark/presentation/screens/bookmark_screen.dart';
import 'package:easy_parking_app/ui/user/features/user/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:iconly/iconly.dart';

import '../../../generated/l10n.dart';
import '../features/maps/home/presentation/screens/home_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialAppState());
  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  void changeNavBar(int index) {
    currentIndex = index;
    emit(ChangeNavBarState());
  }

  List<BottomNavigationBarItem> bottomNavigationBarItems(context) => [
        BottomNavigationBarItem(
          icon: const Padding(
            padding: EdgeInsets.all(3.0),
            child: Icon(
              IconlyBroken.home,
            ),
          ),
          label: S.of(context).home,
        ),
        BottomNavigationBarItem(
          icon: const Padding(
            padding: EdgeInsets.all(3.0),
            child: Icon(IconlyBroken.bookmark),
          ),
          label: S.of(context).bookMark,
        ),
        BottomNavigationBarItem(
          icon: const Padding(
            padding: EdgeInsets.all(3.0),
            child: Icon(IconlyBroken.profile),
          ),
          label: S.of(context).profileAppBarTitle,
        ),
      ];

  List<Widget> screens = const [
    HomeScreen(),
    BookMarkScreen(),
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
