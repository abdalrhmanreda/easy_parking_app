import 'dart:collection';

import 'package:easy_parking_app/core/user/components/custom_text_form_feild.dart';
import 'package:easy_parking_app/ui/user/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconly/iconly.dart';

import 'bulid_search_bottom_sheet.dart';

Stack buildHomeBodyScreen(BuildContext context, HashSet<Marker> markers,
    TextEditingController searchController) {
  return Stack(
    children: [
      GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
              AppCubit.get(context).latitude, AppCubit.get(context).longitude),
          zoom: 22.4,
        ),
        onMapCreated: (GoogleMapController googleMapController) {},
        markers: markers,
        zoomControlsEnabled: true,
      ),
      Align(
        alignment: Alignment.topCenter,
        child: InkWell(
          onTap: () {
            bulidSearchBottomSheet(context, searchController);
          },
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
              type: TextInputType.text,
              isEnable: false,
              border: InputBorder.none,
              prefixIcon: IconlyBroken.search,
              suffixIcon: IconlyBroken.voice,
              suffixPressed: () {},
            ),
          ),
        ),
      ),
    ],
  );
}
