import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../../../../config/colors/app_colors.dart';
import '../../../../../../../../../core/user/components/custom_button.dart';
import '../../../../../../../../../core/user/components/custom_text_button.dart';
import '../../../../../../../../../generated/l10n.dart';

Column buildLoginButtons(
    BuildContext context, TextEditingController controller) {
  return Column(
    children: [
      CustomTextButton(
        text: S.of(context).loginScreenForgetPassword,
        onPressed: () {
          CustomNavigation.navigateByNamedTo(context, RoutePath.forgetPass);
        },
      ),
      Gap(15.h),
      CustomButton(
        onPressed: () {
          if (controller.text == 'abdo@gmail.com') {
            CustomNavigation.navigateByNamedTo(context, RoutePath.layout);
          }
        },
        text: S.of(context).loginScreenButton,
        height: 37.h,
        width: MediaQuery.of(context).size.width,
        vertical: 15.h,
        horizontal: 0,
        radius: 15,
        color: AppColors.kPrimaryColor,
        textColor: 0xffffffff,
        fontSize: 14.sp,
      ),
    ],
  );
}
