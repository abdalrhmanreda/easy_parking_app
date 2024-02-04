import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rate/rate.dart';

import '../../../../../../config/colors/app_colors.dart';

class GarageRate extends StatelessWidget {
  const GarageRate({
    super.key,
    required this.rate,
  });

  final double rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 2.h),
      child: Row(
        children: [
          Rate(
            iconSize: 16,
            color: const Color(AppColors.kAmberColor),
            allowHalf: true,
            allowClear: true,
            initialValue: rate,
            readOnly: false,
            onChange: (value) => print(value),
          ),
          Text(
            rate.toString(),
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: const Color(AppColors.kWhiteColor),
                ),
          ),
        ],
      ),
    );
  }
}
