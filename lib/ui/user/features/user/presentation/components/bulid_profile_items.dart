import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget bulidProfileItems(BuildContext context) => Column(
      children: items
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
            ),
          )
          .toList(),
    );

class ProfileItem {
  final IconData icon;
  final String title;

  ProfileItem({required this.icon, required this.title});
}

List<ProfileItem> items = [
  ProfileItem(icon: IconlyBroken.setting, title: 'Setting'),
  ProfileItem(icon: IconlyBroken.wallet, title: 'Payment'),
  ProfileItem(icon: IconlyBroken.notification, title: 'Notification'),
  ProfileItem(icon: Icons.translate_outlined, title: 'Language'),
  ProfileItem(icon: Icons.help_outline_sharp, title: 'Center help'),
  ProfileItem(icon: IconlyBroken.logout, title: 'Logout'),
];
