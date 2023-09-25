import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../config/colors/app_colors.dart';
import '../../../../../../../../core/user/components/custom_button.dart';
import '../../../../../../../../core/user/components/custom_text_form_feild.dart';
import '../../../../../../../../generated/assets.dart';
import '../../../../../../../../generated/l10n.dart';
import 'bulid_texts_in_forget_screen.dart';

Padding buildForgetPassScreen(
    BuildContext context, TextEditingController emailController) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: MediaQuery.of(context).size.width / 25,
    ),
    child: SingleChildScrollView(
      child: Column(
        children: [
          SvgPicture.asset(
            Assets.authForgetPass,
            height: MediaQuery.of(context).size.height / 2,
          ),
          buildTextsForgetScreen(context),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          CustomTextFormField(
            type: TextInputType.emailAddress,
            isPassword: false,
            maxLine: 1,
            onChanged: (value) {},
            onSubmitted: (value) {},
            onSaved: (value) {},
            controller: emailController,
            label: S.of(context).loginScreenEmailAddress,
            prefixIcon: IconlyBroken.message,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          CustomButton(
            onPressed: () {},
            text: S.of(context).forgetPassButton,
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
      ),
    ),
  );
}
