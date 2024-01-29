import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../../../../../generated/l10n.dart';

InkWell bulidLoginWithGoogle({
  required BuildContext context,
  required VoidCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.w,
        vertical: 5.h,
      ),
      decoration: BoxDecoration(
        // color: const Color(AppColors.kLoginWithGoogleColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Logo(
            Logos.google,
            size: MediaQuery.of(context).size.height / 25,
          ),
          Gap(15.w),
          Text(
            S.of(context).loginScreenLoginWithGoogleButton,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
        ],
      ),
    ),
  );
}
