import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../../../config/colors/app_colors.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });
  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
        ),
        Gap(8.w),
        Row(
          children: [
            Text(subtitle),
            Gap(5.w),
            Icon(
              icon,
              color: const Color(AppColors.kPrimaryColor),
              size: 17,
            ),
          ],
        ),
      ],
    );
  }
}
