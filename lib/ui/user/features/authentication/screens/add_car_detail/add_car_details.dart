import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../admin/feature/insert_garage/presentation/components/add_garage_details/add_garage_item.dart';

class AddCarDetailsScreen extends StatelessWidget {
  const AddCarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(AppColors.kPrimaryColor),
                  ),
            ),
            Text(
              'let\'s start your profile for a better experience',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(AppColors.kGrayColor),
                  ),
            ),
            Gap(20.h),
            AddTextFormFeildWithRichText(
              title: 'Car number',
              maxLine: 1,
              height: 15,
              isRequired: true,
              controller: TextEditingController(),
            ),
            AddTextFormFeildWithRichText(
              title: 'Car model',
              maxLine: 1,
              height: 15,
              isRequired: true,
              controller: TextEditingController(),
            ),
          ],
        ),
      ),
    );
  }
}
