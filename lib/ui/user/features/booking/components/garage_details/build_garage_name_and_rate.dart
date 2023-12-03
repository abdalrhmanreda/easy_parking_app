import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:iconly/iconly.dart';
import 'package:rate/rate.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../generated/l10n.dart';

Column buildGarageNameAndRate(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            S.of(context).parkName,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 16.sp,
                ),
          ),
          const Gap(10),
          Rate(
            iconSize: 25,
            color: Colors.amber,
            allowHalf: true,
            allowClear: true,
            initialValue: 4.0,
            readOnly: false,
            onChange: (value) => print(value),
          ),
        ],
      ),
      const Gap(7),
      const Row(
        children: [
          Icon(
            IconlyBroken.location,
            size: 20,
            color: Color(AppColors.kPrimaryColor),
          ),
          Gap(5),
          Text('Taha Hussin , Minya , Egypt'),
        ],
      ),
    ],
  );
}
