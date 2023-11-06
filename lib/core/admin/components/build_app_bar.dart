import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar({
  required BuildContext context,
  required String title,
}) {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    title: Text(
      title,
      style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
            fontSize: 20.sp,
          ),
    ),
  );
}
