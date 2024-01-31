import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

import 'notification_item.dart';

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
