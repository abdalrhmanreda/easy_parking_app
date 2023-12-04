import 'package:easy_parking_app/core/user/components/custom_app_bar.dart';
import 'package:easy_parking_app/ui/user/features/ticket/components/parking_ticket_screen_body.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class ParkingTicketScreen extends StatelessWidget {
  const ParkingTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).parkingTicket,
      ),
      body: const ParkingTicketScreenBody(),
    );
  }
}
