import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:easy_parking_app/core/user/constant/app_constant.dart';
import 'package:flutter/material.dart';

Widget customCircleAvatar({
  required String image,
  required BuildContext context,
  required bool isSelected,
  required VoidCallback onTap,
}) =>
    InkWell(
      onTap: onTap,
      child: Container(
        height: AppConstant.deviceHeight(context) / 12,
        width: AppConstant.deviceWidth(context) / 3.4,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(AppColors.kLoginWithGoogleColor),
        ),
        child: Image.asset(
          image,
          color: const Color(AppColors.kGrayColor),
        ),
      ),
    );
