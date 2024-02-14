import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../../config/colors/app_colors.dart';
import '../../../../../../../core/user/components/custom_text_form_feild.dart';
import '../../../../../../../core/user/components/validate_method.dart';
import '../../../../../../../core/user/methods/validate_email/vaildate_email.dart';
import '../../../../../../../generated/l10n.dart';

class AddTextFormFeildWithRichText extends StatelessWidget {
  const AddTextFormFeildWithRichText({
    super.key,
    required this.title,
    required this.isRequired,
    required this.controller,
    this.maxLine,
    required this.height,
    this.onTap,
  });
  final String? title;
  final bool isRequired;
  final TextEditingController controller;
  final int? maxLine;
  final double height;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 15.h,
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
          Gap(10.h),
          CustomTextFormField(
            isPassword: title == 'Password' ? true : false,
            inputFormatters: title == S.of(context).registerScreenUserPhone
                ? [
                    FilteringTextInputFormatter.digitsOnly,
                  ]
                : [],
            controller: controller,
            onTap: onTap,
            type: TextInputType.text,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            maxLine: maxLine,
            edgeInsetsGeometry: EdgeInsetsDirectional.symmetric(
              vertical: height,
            ),
            validate: (value) {
              if (title == 'Email Address') {
                if (!isEmailValid(value!)) {
                  return 'Email must contain @ & .com';
                }
              }
              if (value!.isEmpty) {
                return validateMethod(value, title?.toLowerCase());
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
