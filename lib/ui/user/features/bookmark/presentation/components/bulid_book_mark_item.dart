import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:easy_parking_app/core/user/components/custom_button.dart';
import 'package:easy_parking_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bulid_details_of_garage_item.dart';

Container buildBookmarkItem(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 5,
    ),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: const Color(AppColors.kProfileCircleColor),
    ),
    child: Column(
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  Assets.testPCPPhoto3sizedforWeb,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: MediaQuery.of(context).size.height / 9,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 25,
              ),
              bulidDetailsOfGarageItem(context),
            ],
          ),
        ),
        CustomButton(
          onPressed: () {},
          text: 'View Ticket',
          height: 27.h,
          width: MediaQuery.of(context).size.width,
          vertical: 20,
          horizontal: 15,
          radius: 15,
          color: 0xffffffff,
          textColor: AppColors.kPrimaryColor,
          fontSize: 14.sp,
        ),
      ],
    ),
  );
}
