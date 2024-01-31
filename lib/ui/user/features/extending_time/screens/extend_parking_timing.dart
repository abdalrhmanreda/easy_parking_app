import 'package:easy_parking_app/core/user/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../components/extend_screen_body.dart';

class ExtendParkingTimingScreen extends StatelessWidget {
  const ExtendParkingTimingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).extendParkingTime,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: ExtendParkingTimeScreenBody(),
      ),
    );
  }
}
