import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../../config/colors/app_colors.dart';
import '../../../../../../../../../core/user/components/custom_button.dart';
import '../../../../../../../../../generated/assets.dart';
import '../../../../../../../../../generated/l10n.dart';
import '../../../../components/bulid_do_not_have_account.dart';
import '../../../login_screen/presentation/components/bulid_login_with_google_container.dart';
import 'bulid_text_form_feild_register_screen.dart';

Padding buildRegisterScreenBody(
  BuildContext context,
  TextEditingController nameController,
  TextEditingController emailController,
  TextEditingController phoneController,
  TextEditingController passController,
) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: MediaQuery.of(context).size.width / 25,
    ),
    child: SingleChildScrollView(
      child: Column(
        children: [
          SvgPicture.asset(
            Assets.authRegister,
            height: MediaQuery.of(context).size.height / 3,
          ),
          bulidTextFormFeildRegisterScreen(context, nameController,
              emailController, phoneController, passController),
          bulidLoginWithGoogle(context: context, onTap: () {}),
          CustomButton(
            onPressed: () {
              CustomNavigation.navigateByNamedTo(
                  context, RoutePath.enableLocation);
            },
            text: S.of(context).registerScreenButton,
            height: 37.h,
            width: MediaQuery.of(context).size.width,
            vertical: 15.h,
            horizontal: 0,
            radius: 15,
            color: AppColors.kPrimaryColor,
            textColor: 0xffffffff,
            fontSize: 14.sp,
          ),
          bulidDoNotHaveAccountAndIfHaveAccount(
            context: context,
            text: S.of(context).registerScreenHaveAccount,
            textButton: S.of(context).loginScreenButton,
          )
        ],
      ),
    ),
  );
}
