import 'package:flutter/material.dart';

import '../../components/forget_password/reset_pass_screen_body.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResetPassScreenBody(),
    );
  }
}
