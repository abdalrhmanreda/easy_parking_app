import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../core/user/components/custom_button.dart';
import '../../../../../../generated/l10n.dart';

class OngoingButtons extends StatelessWidget {
  const OngoingButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onPressed: () {
                CustomNavigation.navigateByNamedTo(
                    context, RoutePath.parkingTimer);
              },
              text: 'View Timer',
              height: 25.h,
              width: MediaQuery.of(context).size.width / 3.2,
              vertical: 0,
              horizontal: 10.w,
              radius: 15.r,
              color: AppColors.kWhiteColor,
              textColor: AppColors.kPrimaryColor,
              fontSize: 12.sp,
            ),
            CustomButton(
              onPressed: () {
                CustomNavigation.navigateByNamedTo(
                    context, RoutePath.parkingTicket);
              },
              text: S.of(context).viewTicket,
              height: 25.h,
              width: MediaQuery.of(context).size.width / 3.2,
              vertical: 0,
              horizontal: 10.w,
              radius: 15.r,
              color: AppColors.kPrimaryColor,
              textColor: AppColors.kWhiteColor,
              fontSize: 12.sp,
            ),
          ],
        ),
        Gap(10.h),
        Center(
          child: Container(
            alignment: Alignment.center,
            height: 25.h,
            width: MediaQuery.of(context).size.width / 3.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(
                color: const Color(AppColors.kRedColor),
              ),
            ),
            child: Text(
              S.of(context).cancel,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(AppColors.kRedColor),
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
