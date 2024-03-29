import 'package:easy_parking_app/ui/user/features/extending_time/components/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/user/components/custom_slider.dart';
import '../../../../../generated/l10n.dart';

class ExtendParkingTimeScreenBody extends StatelessWidget {
  const ExtendParkingTimeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).addDuration,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 18.sp),
          ),
          Gap(20.h),
          const CustomSlider(),
          Gap(20.h),
          const PaymentMethod(),
        ],
      ),
    );
  }
}
