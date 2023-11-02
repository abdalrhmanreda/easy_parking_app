import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../config/colors/app_colors.dart';
import '../../../../../../../../core/user/constant/app_constant.dart';
import '../../../../../../../../generated/l10n.dart';

Column buildVechicleTexts(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        S.of(context).vechicleDetailsHello,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 25.sp,
              color: const Color(AppColors.kPrimaryColor),
            ),
      ),
      SizedBox(
        height: AppConstant.deviceHeight(context) / 50,
      ),
      SizedBox(
        width: AppConstant.deviceWidth(context) / 1.5,
        child: Text(
          S.of(context).vechicleDetailsDescription,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 14.sp,
                color: Colors.grey,
              ),
          textAlign: TextAlign.center,
        ),
      ),
      SizedBox(
        height: AppConstant.deviceHeight(context) / 10,
      ),
      bulidVechicleNumberText(context),
      SizedBox(
        height: AppConstant.deviceHeight(context) / 40,
      ),
    ],
  );
}

Row bulidVechicleNumberText(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        S.of(context).vechicleDetails,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 16.sp,
            ),
        textAlign: TextAlign.start,
      ),
    ],
  );
}
