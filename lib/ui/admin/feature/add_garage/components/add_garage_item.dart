import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/colors/app_colors.dart';
import '../../../../../core/user/components/custom_text_form_feild.dart';
import '../../../../../core/user/components/validate_method.dart';
import '../../../../../core/user/constant/app_constant.dart';

class AddGarageItem extends StatelessWidget {
  AddGarageItem({
    super.key,
    required this.title,
    required this.isRequired,
    required this.controller,
    this.suffixPressed,
    this.suffixIcon,
  });
  final String title;
  final bool isRequired;
  final TextEditingController controller;
  VoidCallback? suffixPressed;
  IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: isRequired ? '* ' : '',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 16.sp,
                    color: const Color(AppColors.starColor),
                  ),
              children: [
                TextSpan(
                  text: title,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.sp,
                      ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: AppConstant.deviceHeight(context) / 75,
          ),
          CustomTextFormField(
            isPassword: false,
            controller: controller,
            type: TextInputType.text,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            maxLine: 1,
            edgeInsetsGeometry: const EdgeInsetsDirectional.symmetric(
              vertical: 15,
            ),
            validate: (value) {
              return validateMethod(value, title.toLowerCase());
            },
            suffixPressed: suffixPressed,
            suffixIcon: suffixIcon,
            hint: title,
          ),
        ],
      ),
    );
  }
}
