import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../config/colors/app_colors.dart';

Padding buildTextTicket(
    {required BuildContext context,
    required String key,
    required String value}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          key,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: const Color(AppColors.kGrayColor),
              ),
        ),
        const Gap(7),
        Text(value),
      ],
    ),
  );
}
