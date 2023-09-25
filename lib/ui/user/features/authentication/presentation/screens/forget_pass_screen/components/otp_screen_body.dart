import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../../../generated/assets.dart';
import '../../../../../../../../generated/l10n.dart';
import '../../../components/bulid_common_screen.dart';

class OTPScreenBody extends StatelessWidget {
  const OTPScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var otpCodeController = TextEditingController();
    return CommonScreen(
      prefixIcon: IconlyBroken.unlock,
      image: Assets.authForgetPass,
      title: S.of(context).otpScreenTitle,
      description: S.of(context).otpScreenDescription,
      controller: otpCodeController,
      label: S.of(context).otpScreenLabel,
      buttonText: S.of(context).forgetPassButton,
      onPressed: () {
        CustomNavigation.navigateByNamedTo(
          context,
          RoutePath.resetPass,
        );
      },
      onSubmitted: () {},
    );
  }
}
