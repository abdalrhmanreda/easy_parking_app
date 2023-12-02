import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:easy_parking_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../core/user/constant/app_constant.dart';

InkWell buildGarageItem(BuildContext context) {
  return InkWell(
    onTap: () {
      CustomNavigation.navigateByNamedTo(context, AdminRoutePath.garagePlaces);
    },
    child: Row(
      children: [
        Container(
          width: AppConstant.deviceWidth(context) / 3,
          height: AppConstant.deviceHeight(context) / 7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
              image: AssetImage(Assets.testGarage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: AppConstant.deviceWidth(context) / 25,
        ),
        Text(
          'easy Parking',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 17.sp,
              ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            IconlyBroken.arrow_right_2,
            size: 35,
          ),
        )
      ],
    ),
  );
}
