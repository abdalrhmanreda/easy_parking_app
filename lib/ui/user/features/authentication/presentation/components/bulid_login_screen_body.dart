import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../generated/assets.dart';
import '../../../../../../generated/l10n.dart';
import '../screens/login_screen/presentation/components/bulid_login_buttons.dart';
import '../screens/login_screen/presentation/components/bulid_login_with_google_container.dart';
import '../screens/login_screen/presentation/components/bulid_text_form_feild_login.dart';
import 'bulid_do_not_have_account.dart';

Center buildLoginScreenBody(
    BuildContext context,
    TextEditingController emailController,
    TextEditingController passController) {
  return Center(
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.authLogin,
              height: MediaQuery.of(context).size.height / 3,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            buildLoginTextFormFeild(emailController, context, passController),
            buildLoginButtons(context, emailController),
            bulidLoginWithGoogle(context: context, onTap: () {}),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
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
