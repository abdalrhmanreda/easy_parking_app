import 'package:flutter/material.dart';

import '../../../../../../core/user/constant/app_constant.dart';

class CustomWhiteContainer extends StatelessWidget {
  const CustomWhiteContainer(
      {super.key, required this.widget, required this.containerColor});
  final Widget widget;
  final int containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(
        top: 15,
        right: 15,
        left: 15,
      ),
      width: AppConstant.deviceWidth(context),
      decoration: BoxDecoration(
        color: Color(containerColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: widget,
    );
  }
}
