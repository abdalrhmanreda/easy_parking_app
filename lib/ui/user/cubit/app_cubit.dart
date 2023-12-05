import 'dart:async';

import 'package:easy_parking_app/ui/user/cubit/app_state.dart';
import 'package:easy_parking_app/ui/user/features/bookmark/presentation/screens/bookmark_screen.dart';
import 'package:easy_parking_app/ui/user/features/user/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:iconly/iconly.dart';

import '../../../generated/l10n.dart';
import '../features/enable_location/presentation/controller/location_helper.dart';
import '../features/maps/home/presentation/screens/home_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialAppState());
  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  Position? position;

  Future<void> getCurrentLocation() async {
    emit(LoadingState());
    try {
      await LocationHelper.getCurrentLocation();
      position = await Geolocator.getLastKnownPosition();
      emit(GetLocationSuccessState());
    } catch (e) {
      emit(GetLocationErrorState());
    }
  }

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
}
