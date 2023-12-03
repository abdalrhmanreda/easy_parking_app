import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Column buildServiceItem({required IconData icon, required String service}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Icon(
        icon,
        size: 20,
        color: const Color(AppColors.kPrimaryColor),
      ),
      const Gap(5),
      Text(
        service,
        maxLines: 2,
        textAlign: TextAlign.center,
      ),
    ],
  );
}
