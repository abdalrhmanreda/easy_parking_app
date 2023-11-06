import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:easy_parking_app/generated/assets.dart';
import 'package:easy_parking_app/ui/user/features/authentication/presentation/components/bulid_common_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../../../generated/l10n.dart';

class ForgetPassBody extends StatelessWidget {
  const ForgetPassBody({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    return CommonScreen(
      image: Assets.authForgetPass,
      prefixIcon: IconlyBroken.message,
      title: S.of(context).loginScreenForgetPassword,
      description: S.of(context).forgetScreenDescription,
      controller: emailController,
      label: S.of(context).loginScreenEmailAddress,
      buttonText: S.of(context).forgetPassButton,
      onPressed: () {
        CustomNavigation.navigateByNamedTo(context, RoutePath.otp);
      },
      onSubmitted: () {},
    );
  }
}
