import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:easy_parking_app/core/user/constant/app_constant.dart';
import 'package:easy_parking_app/generated/assets.dart';
import 'package:easy_parking_app/ui/user/features/booking/components/booking_summary/custom_white_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:intl/intl.dart';

import '../../../../../core/user/components/custom_button.dart';
import '../../../../../generated/l10n.dart';
import '../../booking/components/booking_summary/list_tile_item.dart';
import '../../booking/models/review_summary_model.dart';

class ParkingTimerScreenBody extends StatelessWidget {
  const ParkingTimerScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<ReviewSummaryModel> items = [
      ReviewSummaryModel(
          title: S.of(context).parkingArea, tailing: S.of(context).parkName),
      ReviewSummaryModel(
          title: S.of(context).address, tailing: 'El Minya - Egypt'),
      ReviewSummaryModel(
          title: S.of(context).parkingSpot, tailing: '1st Floor / A16'),
      ReviewSummaryModel(
          title: S.of(context).date,
          tailing: DateFormat.yMMMd().format(DateTime.now())),
      ReviewSummaryModel(
          title: S.of(context).duration, tailing: '4 ${S.of(context).hour}'),
      ReviewSummaryModel(title: S.of(context).hour, tailing: '9:00 - 1:00'),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TimerCountdown(
          format: CountDownTimerFormat.hoursMinutesSeconds,
          endTime: DateTime.now().add(
            const Duration(
              hours: 2,
              minutes: 0,
              seconds: 0,
            ),
          ),
          onEnd: () {
            print("Timer finished");
          },
        ),
        Container(
          width: AppConstant.deviceWidth(context) / 1.8,
          height: AppConstant.deviceHeight(context) / 4.1,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(AppColors.kPrimaryColor),
              style: BorderStyle.solid,
              width: 15,
            ),
          ),
          child: Image.asset(
            Assets.garageCarsEnterCar,
            height: 100.h,
          ),
        ),
        CustomWhiteContainer(
          widget: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: items
                  .map(
                    (e) => ListTileItem(
                      title: e.title,
                      tailing: e.tailing,
                    ),
                  )
                  .toList(),
            ),
          ),
          containerColor: AppColors.kLightGreyColor,
        ),
        CustomButton(
          onPressed: () {
            CustomNavigation.navigateByNamedTo(
                context, RoutePath.extendParking);
          },
          text: S.of(context).extendParkingTime,
          height: 37.h,
          width: MediaQuery.of(context).size.width,
          vertical: 15.h,
          horizontal: 15,
          radius: 15,
          color: AppColors.kPrimaryColor,
          textColor: 0xffffffff,
          fontSize: 14.sp,
        ),
      ],
    );
  }
}
