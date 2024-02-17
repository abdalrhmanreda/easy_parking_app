import 'package:easy_parking_app/core/user/methods/get_responsive_text/responsive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../generated/assets.dart';

class SignWithGoogle extends StatelessWidget {
  const SignWithGoogle({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Assets.iconsGoogle,
          width: 30.w,
          height: 30.h,
        ),
        const Gap(10),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: getResponsiveFontSize(context, fontSize: 17.sp),
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
