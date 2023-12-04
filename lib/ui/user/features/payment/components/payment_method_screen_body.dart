import 'package:easy_parking_app/ui/user/features/payment/components/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/user/constant/app_constant.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/l10n.dart';
import '../../booking/components/booking_summary/custom_white_container.dart';

class PaymentMethodScreenBody extends StatelessWidget {
  const PaymentMethodScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomWhiteContainer(
      widget: SizedBox(
        height: AppConstant.deviceHeight(context) / 1.4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.of(context).choosePayment,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 18,
                    ),
              ),
              const Gap(10),
              Text(
                S.of(context).walletDesc,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const Gap(25),
              MethodPaymentButton(
                  image: Assets.walletVodafone, method: S.of(context).vodafone),
              const Gap(10),
              MethodPaymentButton(
                  image: Assets.walletMoney, method: S.of(context).cash),
              const Gap(10),
              MethodPaymentButton(
                  image: Assets.walletVisa, method: S.of(context).visa),
            ],
          ),
        ),
      ),
    );
  }
}
