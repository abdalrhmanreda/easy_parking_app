import 'package:easy_parking_app/core/user/constant/app_constant.dart';
import 'package:easy_parking_app/ui/user/features/extending_time/components/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../generated/l10n.dart';

class PaymentMethodScreenBody extends StatelessWidget {
  const PaymentMethodScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppConstant.deviceWidth(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            S.of(context).choosePayment,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 18.sp,
                ),
          ),
          const Gap(10),
          Text(
            S.of(context).walletDesc,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 13.sp,
                ),
          ),
          const Gap(25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w),
            child: const PaymentMethod(),
          ),
        ],
      ),
    );
  }
}
