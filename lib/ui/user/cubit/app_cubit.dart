import 'package:easy_parking_app/ui/user/cubit/app_state.dart';
import 'package:easy_parking_app/ui/user/features/user/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

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
}
