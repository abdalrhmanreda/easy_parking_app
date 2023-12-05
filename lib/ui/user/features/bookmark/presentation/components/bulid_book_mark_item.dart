import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:easy_parking_app/core/user/components/custom_button.dart';
import 'package:easy_parking_app/core/user/constant/app_constant.dart';
import 'package:easy_parking_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'bulid_details_of_garage_item.dart';

class BookMarkItem extends StatelessWidget {
  const BookMarkItem({
    super.key,
    required this.garageName,
    required this.location,
    required this.spots,
    required this.distance,
    required this.button,
    required this.onPressed,
  });
  final String garageName;
  final String location;
  final String spots;
  final String distance;
  final String button;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: AppConstant.deviceHeight(context) / 4.6,
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 8,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(AppColors.kSkyBlueColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    width: MediaQuery.of(context).size.width / 2.8,
                    height: MediaQuery.of(context).size.height / 7,
                  ),
                ),
                const Gap(15),
                bulidDetailsOfGarageItem(
                  context: context,
                  garageName: garageName,
                  distance: distance,
                  location: location,
                  spots: spots,
                ),
              ],
            ),
          ),
          const Gap(10),
          CustomButton(
            onPressed: onPressed,
            text: button,
            height: 27.h,
            width: MediaQuery.of(context).size.width,
            vertical: 5,
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
}
