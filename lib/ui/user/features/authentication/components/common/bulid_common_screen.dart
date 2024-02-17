import 'package:easy_parking_app/core/user/methods/get_responsive_text/responsive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../../../../config/colors/app_colors.dart';
import '../../../../../../../core/user/components/custom_button.dart';
import '../register/full_name.dart';
import 'build_texts.dart';

class CommonScreen extends StatelessWidget {
  const CommonScreen({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.controller,
    required this.label,
    required this.buttonText,
    required this.onPressed,
    required this.onSubmitted,
    required this.prefixIcon,
  });

  final String image;
  final String title;
  final String description;
  final TextEditingController controller;
  final String label;
  final String buttonText;
  final VoidCallback onPressed;
  final Function onSubmitted;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / 25,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SvgPicture.asset(
              image,
              height: MediaQuery.of(context).size.height / 2.5,
            ),
            buildTexts(
              context: context,
              title: title,
              description: description,
            ),
            Gap(15.h),
            TitleAndTextFormFeild(
              nameController: controller,
              title: label,
              hint: label,
            ),
            Gap(15.h),
            CustomButton(
              onPressed: onPressed,
              text: buttonText,
              height: 37.h,
              width: MediaQuery.of(context).size.width,
              vertical: 15.h,
              horizontal: 0,
              radius: 10.r,
              color: AppColors.kPrimaryColor,
              textColor: 0xffffffff,
              fontSize: getResponsiveFontSize(context, fontSize: 17.sp),
            ),
          ],
        ),
      ),
    );
  }
}
