import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/l10n.dart';
import '../components/build_contact.dart';
import '../components/build_faq_screen.dart';

class HelpAndSupportScreen extends StatelessWidget {
  const HelpAndSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).help),
          bottom: TabBar(
            tabs: [
              Text(
                S.of(context).centerHelpSupport,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 16.sp),
              ),
              Text(
                S.of(context).contact,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 16.sp),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            BuildFaqScreen(),
            BuildContactUsScreen(),
          ],
        ),
      ),
    );
  }
}
