import 'dart:async';
import 'dart:collection';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:easy_parking_app/core/user/components/progress_indector.dart';
import 'package:easy_parking_app/ui/user/cubit/app_cubit.dart';
import 'package:easy_parking_app/ui/user/cubit/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconly/iconly.dart';

import 'build_search_part.dart';

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
        CameraPosition myCurrentPositionCameraPosition = CameraPosition(
          target: LatLng(AppCubit.get(context).position!.latitude,
              AppCubit.get(context).position!.longitude),
          bearing: 0,
          tilt: 0,
          zoom: 17,
        );
        Completer<GoogleMapController> mapController = Completer();
        return Scaffold(
          body: ConditionalBuilder(
            condition: state is! LoadingState,
            builder: (context) => Stack(
              fit: StackFit.expand,
              children: [
                GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: myCurrentPositionCameraPosition,
                  onMapCreated:
                      (GoogleMapController googleMapController) async {
                    mapController.complete(googleMapController);
                  },
                  markers: markers,
                  zoomControlsEnabled: false,
                  myLocationEnabled: true,
                  myLocationButtonEnabled: false,
                ),
                buildSearchPart(context, searchController),
              ],
            ),
            fallback: (context) => const CustomLoadingIndicator(),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              final GoogleMapController controller = await mapController.future;
              controller.animateCamera(
                CameraUpdate.newCameraPosition(
                  myCurrentPositionCameraPosition,
                ),
              );
            },
            child: const Icon(
              IconlyBroken.location,
              size: 28,
              color: Color(AppColors.kWhiteColor),
            ),
          ),
        );
      },
    );
  }
}
