import 'package:easy_parking_app/generated/assets.dart';
import 'package:easy_parking_app/ui/admin/feature/garages/components/garage_places/places.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../generated/l10n.dart';

class GaragePlacesScreen extends StatelessWidget {
  const GaragePlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).garagesPlaces),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Places(image: Assets.garageCarsRightCar, angle: 6),
          Column(
            children: [
              const Text('Exit'),
              const Spacer(),
              Image.asset(
                Assets.garageCarsEnterCar,
                width: 50,
                height: 50,
              ),
              const Gap(15),
              const Text('Enter'),
            ],
          ),
          const Places(image: Assets.garageCarsLeftCar, angle: -6),
        ],
      ),
    );
  }
}
