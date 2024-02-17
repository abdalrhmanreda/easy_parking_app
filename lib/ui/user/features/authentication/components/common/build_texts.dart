import 'package:easy_parking_app/core/user/methods/get_responsive_text/responsive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

Column buildTexts({
  required BuildContext context,
  required String title,
  required String description,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: getResponsiveFontSize(context, fontSize: 21.sp),
              fontWeight: FontWeight.w600,
            ),
        textAlign: TextAlign.start,
      ),
      Gap(10.h),
      Text(
        description,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: getResponsiveFontSize(context, fontSize: 14.sp),
              color: Colors.grey,
            ),
        textAlign: TextAlign.start,
      ),
    ],
  );
}
