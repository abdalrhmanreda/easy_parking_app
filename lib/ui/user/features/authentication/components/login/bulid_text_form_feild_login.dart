import 'package:easy_parking_app/ui/user/features/authentication/components/common/build_two_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../../../../generated/l10n.dart';

BulidTwoTextFromField buildLoginTextFormFeild(
  TextEditingController emailController,
  BuildContext context,
  TextEditingController passController,
) {
  return BulidTwoTextFromField(
    firstType: TextInputType.emailAddress,
    secondType: TextInputType.visiblePassword,
    firstController: emailController,
    secondController: passController,
    isPassForSecond: true,
    isPassForFirst: false,
    firstLabel: S.of(context).loginScreenEmailAddress,
    secondLabel: S.of(context).loginScreenPassword,
    firstPrefixIcon: IconlyBroken.message,
    secondPrefixIcon: IconlyBroken.lock,
  );
}
