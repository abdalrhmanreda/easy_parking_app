import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:easy_parking_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:iconly/iconly.dart';

Column bulidDetailsOfGarageItem({
  required BuildContext context,
  required String garageName,
  required String location,
  required String spots,
  required String distance,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        garageName,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            IconlyBroken.location,
            size: 24,
            color: Color(AppColors.kPrimaryColor),
          ),
          Gap(5),
          Text(
            location,
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageIcon(
                AssetImage(Assets.iconsCar),
                color: Color(AppColors.kPrimaryColor),
                size: 20,
              ),
              Gap(3),
              Text('$spots Slot'),
            ],
          ),
          const Gap(10),
          Row(
            children: [
              const Icon(
                IconlyBroken.location,
                color: Color(AppColors.kPrimaryColor),
                size: 20,
              ),
              const Gap(3),
              Text(distance),
            ],
          ),
        ],
      ),
    ],
  );
}
