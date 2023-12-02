import 'package:flutter/material.dart';

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
    return Column(
      children: [
        // buildChipsChoice(tag: tag, choiceItems: choiceItems),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => buildBookmarkItem(context),
            itemCount: 10,
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
          ),
        ),
      ],
    );
  }
}
