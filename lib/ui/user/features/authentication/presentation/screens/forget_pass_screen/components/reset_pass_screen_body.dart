import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../../../generated/assets.dart';
import '../../../../../../../../generated/l10n.dart';
import '../../../components/bulid_common_screen.dart';

class ResetPassScreenBody extends StatelessWidget {
  const ResetPassScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScreen(
      image: Assets.authResetPass,
      title: S.of(context).resetPassScreenTitle,
      description: S.of(context).resetPassScreenDescription,
      controller: TextEditingController(),
      label: S.of(context).resetPassScreenLabel,
      buttonText: S.of(context).forgetPassButton,
      onPressed: () {},
      onSubmitted: () {},
      prefixIcon: IconlyBroken.lock,
    );
  }
}
