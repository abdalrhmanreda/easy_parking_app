import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/user/components/custom_text_form_feild.dart';

class BulidTwoTextFromField extends StatelessWidget {
  BulidTwoTextFromField({
    super.key,
    required this.firstController,
    required this.secondController,
    required this.firstLabel,
    required this.secondLabel,
    required this.isPassForFirst,
    required this.isPassForSecond,
    this.firstPrefixIcon,
    this.secondPrefixIcon,
    required this.firstType,
    required this.secondType,
  });
  final TextEditingController firstController;
  final TextEditingController secondController;
  final String firstLabel;
  final String secondLabel;
  final bool isPassForFirst;
  final bool isPassForSecond;
  IconData? firstPrefixIcon;
  IconData? secondPrefixIcon;
  final TextInputType firstType;
  final TextInputType secondType;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextFormField(
          type: firstType,
          isPassword: isPassForFirst,
          maxLine: 1,
          controller: firstController,
          label: firstLabel,
          prefixIcon: firstPrefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          edgeInsetsGeometry: EdgeInsets.symmetric(
            vertical: 15.h,
          ),
        ),
        Gap(15.h),
        CustomTextFormField(
          type: secondType,
          isPassword: isPassForSecond,
          maxLine: 1,
          controller: firstController,
          label: secondLabel,
          prefixIcon: secondPrefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ],
    );
  }
}
