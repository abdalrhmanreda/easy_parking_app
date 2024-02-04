import 'package:easy_parking_app/core/user/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../../user/features/bookmark/components/bookmark_body_screen_body.dart';

class BookMarkAdminScreen extends StatelessWidget {
  const BookMarkAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int tag = 0;

    List<String> choiceItems = [
      'Completed',
      'Canceled',
      'Ongoing',
    ];

    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).bookMark,
      ),
      body: const BookmarkBodyScreen(),
    );
  }
}
