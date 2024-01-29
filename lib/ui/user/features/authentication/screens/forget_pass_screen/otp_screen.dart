import 'package:flutter/material.dart';

import '../../components/forget_password/otp_screen_body.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OTPScreenBody(),
    );
  }
}
