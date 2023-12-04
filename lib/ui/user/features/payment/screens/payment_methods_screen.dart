import 'package:easy_parking_app/core/user/components/custom_app_bar.dart';
import 'package:easy_parking_app/ui/user/features/payment/components/payment_method_screen_body.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).profilePayment,
      ),
      body: const PaymentMethodScreenBody(),
    );
  }
}
