import 'package:easy_parking_app/ui/admin/feature/bookmark/screens/bookmark_screen.dart';
import 'package:easy_parking_app/ui/user/features/user/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:icons_plus/icons_plus.dart';

import '../feature/garages/screens/garage_places.dart';

part 'admin_state.dart';

class AdminCubit extends Cubit<AdminStates> {
  AdminCubit() : super(AdminInitial());

  static AdminCubit get(context) => BlocProvider.of(context);

  void changeValue(bool value) {
    value != value;
    emit(ChangeValueState());
  }

  int currentIndex = 0;
  List<String> titles = ['Garage Places', 'Garage Details', 'profile'];
  List<Widget> screens = [
    const GaragePlacesScreen(),
    const BookMarkAdminScreen(),
    const ProfileScreen(),
  ];

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
      icon: Icon(Iconsax.car),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(IconlyBroken.bookmark),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(IconlyBroken.profile),
      label: '',
    ),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeBottomNavBarState());
  }
}
