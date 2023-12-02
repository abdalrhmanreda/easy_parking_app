import 'package:easy_parking_app/ui/user/features/booking/components/select_booking_date/select_booking_date_screen_body.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class SelectBookingDateScreen extends StatelessWidget {
  const SelectBookingDateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).bookingParkingDate),
      ),
      body: const SelectBookingDateScreenBody(),
    );
  }
}
