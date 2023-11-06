import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../../../../core/user/components/custom_text_form_feild.dart';
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
      SizedBox(
        height: MediaQuery.of(context).size.height / 30,
      ),
      CustomTextFormField(
        type: TextInputType.name,
        isPassword: false,
        maxLine: 1,
        onChanged: (value) {},
        onSubmitted: (value) {},
        onSaved: (value) {},
        controller: nameController,
        label: S.of(context).registerScreenUserName,
        prefixIcon: IconlyBroken.profile,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height / 50,
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
        height: MediaQuery.of(context).size.height / 50,
      ),
      CustomTextFormField(
        type: TextInputType.phone,
        isPassword: false,
        maxLine: 1,
        onChanged: (value) {},
        onSubmitted: (value) {},
        onSaved: (value) {},
        controller: phoneController,
        label: S.of(context).registerScreenUserPhone,
        prefixIcon: IconlyBroken.call,
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
        prefixIcon: IconlyBroken.lock,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height / 50,
      ),
    ],
  );
}
