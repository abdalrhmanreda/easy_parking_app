import 'package:flutter/material.dart';

import '../../../../../../generated/l10n.dart';
import '../common/bookmark_item.dart';

class OngoingBookingScreen extends StatelessWidget {
  const OngoingBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => BookmarkItem(
        garageName: S.of(context).parkName,
        distance: '150 m',
        location: 'Naser city , Cairo',
        spots: '50',
        state: 'on going',
      ),
      itemCount: 10,
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
    );
  }
}
