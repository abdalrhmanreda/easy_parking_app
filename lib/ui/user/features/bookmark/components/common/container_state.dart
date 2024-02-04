import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/colors/app_colors.dart';

class ContainerState extends StatelessWidget {
  const ContainerState({
    super.key,
    required this.state,
    required this.textColor,
    required this.borderColor,
  });

  final String state;
  final int textColor;
  final int borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 80.w,
      height: 20.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          style: BorderStyle.solid,
          color: Color(borderColor),
        ),
        color: const Color(AppColors.kWhiteColor),
      ),
      child: Text(
        state,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: Color(textColor),
            ),
      ),
    );
  }
}
