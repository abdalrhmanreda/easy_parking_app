import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../config/colors/app_colors.dart';

class ContactUsItem extends StatelessWidget {
  const ContactUsItem({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Color(AppColors.kPrimaryColor),
            ),
          ),
        ),
      ),
      onPressed: () {},
      child: SizedBox(
        height: 40.h,
        child: Row(
          children: [
            Icon(
              icon,
              color: const Color(AppColors.kPrimaryColor),
              size: 28,
            ),
            const Gap(10),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 18.sp, color: const Color(AppColors.kPrimaryColor)),
            ),
          ],
        ),
      ),
    );
  }
}
