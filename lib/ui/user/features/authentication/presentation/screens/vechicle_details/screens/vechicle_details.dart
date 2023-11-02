import 'package:flutter/material.dart';

import '../components/vechicle_details_screen_body.dart';

class VechicleDetailsScreen extends StatelessWidget {
  const VechicleDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: VechicleDetailsScreenBody(),
    );
  }
}
