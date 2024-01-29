import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../../../../generated/assets.dart';
import '../../../../../../../generated/l10n.dart';
import '../login/bulid_login_buttons.dart';
import '../login/bulid_login_with_google_container.dart';
import '../login/bulid_text_form_feild_login.dart';
import 'bulid_do_not_have_account.dart';

class BuildLoginScreenBody extends StatelessWidget {
  const BuildLoginScreenBody({
    super.key,
    required this.emailController,
    required this.passController,
  });
  final TextEditingController emailController;
  final TextEditingController passController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.authLogin,
                height: MediaQuery.of(context).size.height / 3,
              ),
              Gap(20.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  S.of(context).signInScreenTitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 25.sp),
                ),
              ),
              Gap(20.h),
              buildLoginTextFormFeild(emailController, context, passController),
              buildLoginButtons(context, emailController),
              bulidLoginWithGoogle(context: context, onTap: () {}),
              Gap(15.h),
              bulidDoNotHaveAccountAndIfHaveAccount(
                  context: context,
                  text: S.of(context).doNotHaveAccount,
                  textButton: S.of(context).createAccountButton),
            ],
          ),
        ),
      ),
    );
  }
}
