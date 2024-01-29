import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../config/colors/app_colors.dart';
import '../../../../../core/user/components/custom_button.dart';
import '../../../../../core/user/components/custom_text_form_feild.dart';
import '../../../../../core/user/constant/app_constant.dart';
import '../../../../../generated/l10n.dart';
import 'build_two_text_form_field.dart';

class BuildFaqScreen extends StatelessWidget {
  const BuildFaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          CustomTwoTextFromField(
            controller1: controller,
            controller2: controller,
            label1: S.of(context).registerScreenUserName,
            label2: S.of(context).loginScreenEmailAddress,
            isPass: false,
            isPass2: false,
          ),
          const Gap(15),
          const Gap(15),
          Container(
            width: AppConstant.deviceWidth(context),
            height: 150.h,
            decoration: BoxDecoration(
              color: const Color(AppColors.kLoginWithGoogleColor),
              borderRadius: BorderRadius.circular(15),
            ),
            child: CustomTextFormField(
              isPassword: false,
              maxLine: 10,
              type: TextInputType.visiblePassword,
              controller: controller,
              border: InputBorder.none,
              label: 'Problem',
              edgeInsetsGeometry: const EdgeInsets.symmetric(
                vertical: 35,
              ),
            ),
          ),
          const Gap(25),
          CustomButton(
            onPressed: () {},
            text: S.of(context).send,
            width: AppConstant.deviceWidth(context),
            height: 37.h,
            radius: 15,
            color: AppColors.kPrimaryColor,
            textColor: AppColors.kWhiteColor,
            horizontal: 15,
            vertical: 15,
          ),
        ],
      ),
    );
  }
}
