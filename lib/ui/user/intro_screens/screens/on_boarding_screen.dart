import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:easy_parking_app/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../core/user/components/custom_text_button.dart';
import '../components/on_boarding_screen_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomTextButton(
              onPressed: () {
                CustomNavigation.navigateAndFinishNyNamed(
                    context, RoutePath.login);
              },
              text: S.of(context).onBoardingTextButtonText,
            ),
          ),
        ],
      ),
      body: const OnBoardingScreenBody(),
    );
  }
}
