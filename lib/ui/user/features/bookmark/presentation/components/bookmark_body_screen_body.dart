import 'package:flutter/material.dart';

import '../../../../../../generated/l10n.dart';
import 'bulid_book_mark_item.dart';

class BookmarkBodyScreen extends StatelessWidget {
  const BookmarkBodyScreen({
    super.key,
    required this.tag,
    required this.choiceItems,
  });

  final int tag;
  final List<String> choiceItems;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => BookMarkItem(
        garageName: S.of(context).parkName,
        distance: '150 m',
        location: 'Naser city , Cairo',
        spots: '50',
        button: S.of(context).viewTicket,
        onPressed: () {},
      ),
      itemCount: 10,
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
    );
  }
}
