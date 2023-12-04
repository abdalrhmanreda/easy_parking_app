import 'package:easy_parking_app/core/user/components/custom_app_bar.dart';
import 'package:easy_parking_app/ui/user/features/booking/components/booking_summary/booking_summary_screen_body.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class BookingSummaryScreen extends StatelessWidget {
  const BookingSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: (S.of(context).reviewSummary),
      ),
      body: const BookingSummaryScreenBody(),
    );
  }
}
