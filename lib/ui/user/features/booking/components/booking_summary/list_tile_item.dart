import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListTileItem extends StatelessWidget {
  const ListTileItem({super.key, required this.title, required this.tailing});
  final String title;
  final String tailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style:
            Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14.sp),
      ),
      trailing: Text(
        tailing,
        style:
            Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14.sp),
      ),
    );
  }
}
