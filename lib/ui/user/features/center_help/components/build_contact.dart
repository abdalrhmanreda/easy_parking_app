import 'package:easy_parking_app/ui/user/features/center_help/components/contact_us_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../generated/l10n.dart';

class BuildContactUsScreen extends StatelessWidget {
  const BuildContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Gap(15.h),
          ContactUsItem(icon: EvaIcons.facebook, title: S.of(context).facebook),
          Gap(15.h),
          ContactUsItem(icon: EvaIcons.google, title: S.of(context).gmail),
          Gap(15.h),
          ContactUsItem(icon: EvaIcons.linkedin, title: S.of(context).linkedIn),
          Gap(15.h),
          ContactUsItem(icon: EvaIcons.twitter, title: S.of(context).twitter),
        ],
      ),
    );
  }
}
