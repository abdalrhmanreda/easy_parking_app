import 'package:flutter/material.dart';

import '../components/enable_location_screen_body.dart';

class EnableLocationScreen extends StatelessWidget {
  const EnableLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EnableLocationScreenBody(),
    );
  }
}
