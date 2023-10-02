import 'package:easy_parking_app/ui/user/features/user/presentation/components/profile_screen_body.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'Profile',
        ),
      ),
      body: const ProfileScreenBody(),
    );
  }
}
