import 'package:easy_parking_app/ui/user/features/authentication/components/common/build_two_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../../../../generated/l10n.dart';

Column bulidTextFormFeildRegisterScreen(
  BuildContext context,
  TextEditingController nameController,
  TextEditingController emailController,
  TextEditingController phoneController,
  TextEditingController passController,
) {
  return Column(
    children: [
      BulidTwoTextFromField(
        firstController: nameController,
        secondController: emailController,
        firstLabel: S.of(context).registerScreenUserName,
        secondLabel: S.of(context).loginScreenEmailAddress,
        isPassForFirst: false,
        isPassForSecond: false,
        firstType: TextInputType.name,
        secondType: TextInputType.emailAddress,
        firstPrefixIcon: IconlyBroken.profile,
        secondPrefixIcon: IconlyBroken.message,
      ),
      Gap(15.h),
      BulidTwoTextFromField(
        firstController: phoneController,
        secondController: passController,
        firstLabel: S.of(context).registerScreenUserPhone,
        secondLabel: S.of(context).loginScreenPassword,
        isPassForFirst: false,
        isPassForSecond: false,
        firstType: TextInputType.phone,
        secondType: TextInputType.visiblePassword,
        firstPrefixIcon: IconlyBroken.call,
        secondPrefixIcon: IconlyBroken.lock,
      ),
      Gap(15.h),
    ],
  );
}
