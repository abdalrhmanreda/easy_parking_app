import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'list_of_profile_item.dart';

Widget bulidProfileItems(BuildContext context) => Column(
      children: items(context)
          .map(
            (e) => ListTile(
              title: Text(
                e.title,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 13.sp,
                    ),
              ),
              leading: CircleAvatar(
                backgroundColor: const Color(AppColors.kProfileCircleColor),
                child: Icon(e.icon),
              ),
              onTap: () {
                e.onTap();
              },
            ),
          )
          .toList(),
    );
