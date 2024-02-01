import 'package:easy_parking_app/core/user/constant/app_constant.dart';
import 'package:easy_parking_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../../../generated/l10n.dart';
import 'alert_components/details_item.dart';
import 'alert_components/garage_name_and_rate.dart';

Future<void> showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        contentPadding: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        content: SizedBox(
          height: AppConstant.deviceHeight(context) / 3,
          child: Column(
            children: [
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                child: Image.asset(Assets.testPCPPhoto3sizedforWeb),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: GarageNameAndRate(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DetailsItem(
                    title: S.of(context).distance,
                    subtitle: '12 km',
                    icon: IconlyBroken.location,
                  ),
                  DetailsItem(
                    title: S.of(context).duration,
                    subtitle: '5 min',
                    icon: IconlyBroken.time_circle,
                  ),
                  DetailsItem(
                    title: S.of(context).cost,
                    subtitle: '120',
                    icon: Iconsax.dollar_circle,
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const CircleAvatar(
                radius: 25,
                child: Icon(IconlyBroken.arrow_left_2),
              ),
            ),
          ),
        ],
      );
    },
  );
}
