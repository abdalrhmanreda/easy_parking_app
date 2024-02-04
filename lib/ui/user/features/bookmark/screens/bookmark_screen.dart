import 'package:easy_parking_app/core/user/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../../generated/l10n.dart';
import '../components/bookmark_body_screen_body.dart';

class BookMarkScreen extends StatelessWidget {
  const BookMarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).myBookMark,
      ),
      body: const BookmarkBodyScreen(),
    );
  }
}
