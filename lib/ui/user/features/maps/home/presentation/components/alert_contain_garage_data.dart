import 'package:easy_parking_app/core/user/constant/app_constant.dart';
import 'package:easy_parking_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

Future<void> showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        contentPadding: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        content: SizedBox(
          height: AppConstant.deviceHeight(context) / 3,
          child: Column(
            children: <Widget>[
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                child: Image.asset(Assets.testModelGarage),
              ),
            ],
          ),
        ),
        actions: [
          Center(
            child: InkWell(
              onTap: () {},
              child: const CircleAvatar(
                radius: 25,
                child: Icon(IconlyBroken.arrow_left_2),
              ),
            ),
          ),
        ],
      );
    },
  );
}
