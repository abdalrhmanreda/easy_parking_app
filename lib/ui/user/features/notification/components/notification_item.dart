import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../../../config/colors/app_colors.dart';

class NotificationItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;

  const NotificationItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          vertical: 15.h,
          horizontal: 5.w,
        ),
        leading: const CircleAvatar(
          radius: 25,
          backgroundColor:
              Colors.blue, // You can customize the color or use an image here
          child: Icon(IconlyBroken.message, color: Colors.white),
        ),
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h),
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        subtitle: Text(
          subtitle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 12.sp,
                color: const Color(AppColors.kGrayColor),
                height: 1.2.h,
              ),
        ),
        trailing: Text(
          time,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 12.sp, color: const Color(AppColors.kBlackColor)),
        ),
        onTap: () {
          // Add any action you want when the item is tapped
          // For example, navigate to a detailed notification screen
        },
      ),
    );
  }
}
