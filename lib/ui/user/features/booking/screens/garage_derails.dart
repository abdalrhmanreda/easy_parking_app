import 'package:easy_parking_app/core/user/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../components/garage_details/garage_details_screen_body.dart';

class GarageDetailsScreen extends StatelessWidget {
  const GarageDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: (S.of(context).parkingDetails),
      ),
      body: const GarageDetailsScreenBody(),
    );
  }
}
