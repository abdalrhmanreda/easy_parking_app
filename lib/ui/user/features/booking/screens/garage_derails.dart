import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../components/garage_details/garage_details_screen_body.dart';

class GarageDetailsScreen extends StatelessWidget {
  const GarageDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).parkingDetails),
      ),
      body: const GarageDetailsScreenBody(),
    );
  }
}
