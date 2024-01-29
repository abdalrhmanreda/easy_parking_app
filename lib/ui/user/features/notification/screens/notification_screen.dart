import 'package:easy_parking_app/core/user/components/custom_app_bar.dart';
import 'package:easy_parking_app/ui/user/features/notification/components/notification_screen_body.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).profileNotification,
      ),
      body: const NotificationScreenBody(),
    );
  }
}
