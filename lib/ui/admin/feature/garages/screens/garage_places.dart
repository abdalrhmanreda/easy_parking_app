import 'package:easy_parking_app/generated/assets.dart';
import 'package:easy_parking_app/ui/admin/feature/garages/components/garage_places/places.dart';
import 'package:easy_parking_app/ui/admin/feature/garages/components/parking_lot_id.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      body: Padding(
        padding: EdgeInsets.only(bottom: 5.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Places(
                widget: Image.asset(
                  Assets.garageCarsRightCar,
                  width: 100,
                  height: 100,
                ),
                angle: 6),
            Column(
              children: [
                Text(S.of(context).exit),
                const Spacer(),
                Image.asset(
                  Assets.garageCarsEnterCar,
                  width: 50,
                  height: 50,
                ),
                const Gap(15),
                Text(S.of(context).enter),
              ],
            ),
            const Places(widget: ParkingLotId(name: 'A1'), angle: -6),
          ],
        ),
      ),
    );
  }
}
