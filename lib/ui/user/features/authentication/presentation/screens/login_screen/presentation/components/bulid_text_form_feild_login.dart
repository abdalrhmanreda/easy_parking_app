import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../../../../../../../core/user/components/custom_text_form_feild.dart';
import '../../../../../../../../../generated/l10n.dart';

Column buildLoginTextFormFeild(TextEditingController emailController,
    BuildContext context, TextEditingController passController) {
  return Column(
    children: [
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
        height: MediaQuery.of(context).size.height / 50,
      ),
      CustomTextFormField(
        isPassword: true,
        maxLine: 1,
        onChanged: (value) {},
        onSubmitted: (value) {},
        onSaved: (value) {},
        controller: passController,
        label: S.of(context).loginScreenPassword,
        type: TextInputType.visiblePassword,
        prefixIcon: IconlyBroken.message,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ],
  );
}
