import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';

class NotificationScreenBody extends StatelessWidget {
  const NotificationScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(5.h),
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => NotificationItem(
        title: 'you have a new notification',
        subtitle:
            'you book a new parking space in 10 minutes ago at ${DateFormat('h:mm a').format(DateTime.now())} in parking lot C1 at El Minya',
        time: DateFormat('h:mm a').format(DateTime.now()),
      ),
      separatorBuilder: (context, index) => Gap(1.h),
      itemCount: 10,
    );
  }
}

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
