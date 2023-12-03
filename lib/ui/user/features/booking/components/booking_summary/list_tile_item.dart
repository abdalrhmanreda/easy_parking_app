import 'package:flutter/material.dart';

class ListTileItem extends StatelessWidget {
  const ListTileItem({super.key, required this.title, required this.tailing});
  final String title;
  final String tailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Text(tailing),
    );
  }
}
