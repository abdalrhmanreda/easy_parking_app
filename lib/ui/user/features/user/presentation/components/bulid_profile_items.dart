import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../generated/l10n.dart';

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
            ),
          )
          .toList(),
    );

class ProfileItem {
  final IconData icon;
  final String title;

  ProfileItem({required this.icon, required this.title});
}

List<ProfileItem> items(context) => [
      ProfileItem(
          icon: IconlyBroken.setting, title: S.of(context).profileSettings),
      ProfileItem(
          icon: IconlyBroken.wallet, title: S.of(context).profilePayment),
      ProfileItem(
          icon: IconlyBroken.notification,
          title: S.of(context).profileNotification),
      ProfileItem(
          icon: Icons.translate_outlined, title: S.of(context).profileLanguage),
      ProfileItem(
          icon: Icons.help_outline_sharp,
          title: S.of(context).profileCenterHelp),
      ProfileItem(
          icon: IconlyBroken.logout, title: S.of(context).profileLogout),
    ];
