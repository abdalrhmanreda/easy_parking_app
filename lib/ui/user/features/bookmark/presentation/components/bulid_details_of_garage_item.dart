import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

Column bulidDetailsOfGarageItem(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Cairo Park',
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            IconlyBroken.location,
            size: 24,
            color: Color(AppColors.kPrimaryColor),
          ),
          Text(
            'Naser city , Cairo',
          ),
        ],
      ),
      const Row(
        children: [
          Icon(
            Iconsax.car,
            color: Color(AppColors.kPrimaryColor),
            size: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Text('45 Slot'),
        ],
      ),
    ],
  );
}
