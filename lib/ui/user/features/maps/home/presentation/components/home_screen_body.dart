import 'package:easy_parking_app/core/user/components/custom_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconly/iconly.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    return Stack(
      children: [
        const GoogleMap(
          mapType: MapType.terrain,
          initialCameraPosition: CameraPosition(
            target: LatLng(28.678439119267527, 30.807220974027995),
            zoom: 14.4,
          ),
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
              align: TextAlign.center,
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
  }
}
