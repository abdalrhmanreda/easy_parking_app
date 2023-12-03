import 'package:flutter/material.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../core/user/constant/app_constant.dart';

class CustomWhiteContainer extends StatelessWidget {
  const CustomWhiteContainer({super.key, required this.widget});
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(
        top: 15,
        right: 15,
        left: 15,
      ),
      width: AppConstant.deviceWidth(context),
      decoration: BoxDecoration(
        color: const Color(AppColors.kWhiteColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: widget,
    );
  }
}
