import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../generated/l10n.dart';
import 'build_service_item.dart';

Column buildServicesWeProvide(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        S.of(context).serviceProvide,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 16.sp,
            ),
      ),
      const Gap(15),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: buildServiceItem(
                icon: IconlyBroken.time_circle, service: S.of(context).support),
          ),
          Expanded(
            child: buildServiceItem(
                icon: IconlyBroken.video,
                service: S.of(context).securityCamara),
          ),
          Expanded(
            child: buildServiceItem(
                icon: IconlyBroken.wallet,
                service: S.of(context).onlinePayment),
          ),
          Expanded(
            child: buildServiceItem(
                icon: IconlyBroken.shield_done,
                service: S.of(context).emergencyExit),
          ),
        ],
      ),
    ],
  );
}
