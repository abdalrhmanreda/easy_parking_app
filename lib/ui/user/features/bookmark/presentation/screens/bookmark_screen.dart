import 'package:flutter/material.dart';

import '../components/bookmark_body_screen_body.dart';

class BookMarkScreen extends StatelessWidget {
  const BookMarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int tag = 0;

    List<String> choiceItems = [
      'Completed',
      'Canceled',
      'Ongoing',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Bookmark',
        ),
      ),
      body: BookmarkBodyScreen(tag: tag, choiceItems: choiceItems),
    );
  }
}
