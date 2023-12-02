import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/user/components/custom_text_button.dart';

Row bulidDoNotHaveAccountAndIfHaveAccount({
  required BuildContext context,
  required String text,
  required String textButton,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        text,
      ),
      CustomTextButton(
        onPressed: () {
          if (textButton != "Login") {
            CustomNavigation.navigateByNamedTo(context, RoutePath.register);
          } else {
            Navigator.pop(context);
          }
        },
        text: textButton,
      ),
    ],
  );
}
