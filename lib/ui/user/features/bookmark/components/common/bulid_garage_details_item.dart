import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../generated/assets.dart';
import 'container_state.dart';
import 'icon_and_text.dart';

class BulidDetailsOfGarageItem extends StatelessWidget {
  final String garageName;
  final String location;
  final String spots;
  final String distance;
  final String hour;
  final String state;

  const BulidDetailsOfGarageItem({
    Key? key,
    required this.garageName,
    required this.location,
    required this.spots,
    required this.distance,
    required this.hour,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        Gap(5.h),
        IconAndText(
          text: location,
          icon: const Icon(
            IconlyBroken.location,
            size: 22,
            color: Color(AppColors.kPrimaryColor),
          ),
        ),
        Gap(5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndText(
              icon: const ImageIcon(
                AssetImage(Assets.iconsCar),
                color: Color(AppColors.kPrimaryColor),
                size: 20,
              ),
              text: spots,
            ),
            Gap(20.w),
            IconAndText(
              text: distance,
              icon: const Icon(
                IconlyBroken.location,
                color: Color(AppColors.kPrimaryColor),
                size: 18,
              ),
            ),
          ],
        ),
        Gap(5.h),
        Row(
          children: [
            // Assuming 'text' and 'icon' are provided as parameters
            IconAndText(
              text: hour,
              icon: const Icon(
                IconlyBroken.time_circle,
                size: 22,
                color: Color(AppColors.kPrimaryColor),
              ),
            ),
            Gap(10.w),
            state == 'on going'
                ? ContainerState(
                    state: state,
                    textColor: AppColors.kPrimaryColor,
                    borderColor: AppColors.kPrimaryColor,
                  )
                : (state == 'complete'
                    ? ContainerState(
                        state: state,
                        textColor: AppColors.kPrimaryColor,
                        borderColor: AppColors.kPrimaryColor,
                      )
                    : ContainerState(
                        state: state,
                        textColor: AppColors.kRedColor,
                        borderColor: AppColors.kRedColor,
                      )),
          ],
        ),
      ],
    );
  }
}

// IconAndText widget implementation
