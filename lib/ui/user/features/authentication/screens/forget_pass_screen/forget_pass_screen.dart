import 'package:flutter/material.dart';

import '../../components/forget_password/forget_pass_body.dart';

class ForgetPassScreen extends StatelessWidget {
  const ForgetPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgetPassBody(),
    );
  }
}
