import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../../generated/assets.dart';
import 'bulid_login_buttons.dart';
import 'bulid_login_with_google_container.dart';
import 'bulid_text_form_feild_login.dart';

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
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            buildLoginButtons(context),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            bulidLoginWithGoogle(context),
          ],
        ),
      ),
    ),
  );
}
