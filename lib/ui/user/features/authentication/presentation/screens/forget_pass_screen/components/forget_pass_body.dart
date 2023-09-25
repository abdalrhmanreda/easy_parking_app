import 'package:flutter/material.dart';

import 'bulid_forget_pass_screen.dart';

class ForgetPassBody extends StatelessWidget {
  const ForgetPassBody({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    return buildForgetPassScreen(context, emailController);
  }
}
