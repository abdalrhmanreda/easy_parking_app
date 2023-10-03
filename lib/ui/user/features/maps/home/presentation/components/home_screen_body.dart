import 'dart:collection';

import 'package:easy_parking_app/ui/user/cubit/app_cubit.dart';
import 'package:easy_parking_app/ui/user/cubit/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'bulid_home_body_screen.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    var markers = HashSet<Marker>();

    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return buildHomeBodyScreen(context, markers, searchController);
      },
    );
  }
}
