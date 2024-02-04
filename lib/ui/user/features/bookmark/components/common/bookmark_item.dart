import 'package:easy_parking_app/ui/user/features/bookmark/components/common/image_with_rate.dart';
import 'package:easy_parking_app/ui/user/features/bookmark/components/on_going_bookings/on_going_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../core/user/components/custom_button.dart';
import '../../../../../../core/user/constant/app_constant.dart';
import '../../../../../../generated/assets.dart';
import '../../../../../../generated/l10n.dart';
import 'bulid_garage_details_item.dart';

class BookmarkItem extends StatelessWidget {
  const BookmarkItem({
    super.key,
    required this.garageName,
    required this.location,
    required this.spots,
    required this.distance,
    required this.state,
  });
  final String garageName;
  final String location;
  final String spots;
  final String distance;
  final String state;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: AppConstant.deviceHeight(context) / 4,
      margin: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 8.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(AppColors.kSkyBlueColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Row(
              children: [
                const ImageWithRate(
                  image: Assets.testPCPPhoto3sizedforWeb,
                  rate: 4.5,
                ),
                const Gap(15),
                BulidDetailsOfGarageItem(
                  garageName: garageName,
                  distance: distance,
                  location: location,
                  spots: spots,
                  hour: '20h',
                  state: state,
                ),
              ],
            ),
          ),
          Gap(10.h),
          state == 'on going'
              ? const OngoingButtons()
              : (state == 'complete'
                  ? CustomButton(
                      onPressed: () {},
                      text: S.of(context).viewTicket,
                      height: 25.h,
                      width: MediaQuery.of(context).size.width / 2,
                      vertical: 0,
                      horizontal: 10.w,
                      radius: 15.r,
                      color: AppColors.kPrimaryColor,
                      textColor: AppColors.kWhiteColor,
                      fontSize: 12.sp,
                    )
                  : Container()),
        ],
      ),
    );
  }
}
