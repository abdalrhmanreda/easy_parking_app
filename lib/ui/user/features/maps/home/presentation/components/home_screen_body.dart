import 'dart:collection';

import 'package:easy_parking_app/core/user/components/custom_text_form_feild.dart';
import 'package:easy_parking_app/ui/user/cubit/app_cubit.dart';
import 'package:easy_parking_app/ui/user/cubit/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconly/iconly.dart';

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
        return Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                target: LatLng(AppCubit.get(context).latitude,
                    AppCubit.get(context).longitude),
                zoom: 19.4,
              ),
              onMapCreated: (GoogleMapController googleMapController) {
                setState(() {
                  markers.add(
                    Marker(
                      markerId: const MarkerId('1'),
                      position: LatLng(AppCubit.get(context).latitude,
                          AppCubit.get(context).longitude),
                    ),
                  );
                });
                print('marker added');
              },
              markers: markers,
              zoomControlsEnabled: true,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 50,
                ),
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: CustomTextFormField(
                  isPassword: false,
                  label: 'search',
                  border: InputBorder.none,
                  prefixIcon: IconlyBroken.search,
                  suffixIcon: IconlyBroken.voice,
                  suffixPressed: () {},
                  controller: searchController,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
