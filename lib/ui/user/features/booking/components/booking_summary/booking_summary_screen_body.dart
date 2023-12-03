import 'package:easy_parking_app/ui/user/features/booking/components/booking_summary/custom_white_container.dart';
import 'package:easy_parking_app/ui/user/features/booking/components/booking_summary/list_tile_item.dart';
import 'package:easy_parking_app/ui/user/features/booking/models/review_summary_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../core/user/components/custom_button.dart';
import '../../../../../../generated/l10n.dart';

class BookingSummaryScreenBody extends StatelessWidget {
  const BookingSummaryScreenBody({super.key});

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
    List<ReviewSummaryModel> items2 = [
      ReviewSummaryModel(title: S.of(context).amount, tailing: '120 EG'),
      ReviewSummaryModel(title: S.of(context).tax, tailing: '10 EG'),
      ReviewSummaryModel(title: S.of(context).total, tailing: '130 EG'),
    ];
    return Column(
      children: [
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
        )),
        const Gap(25),
        CustomWhiteContainer(
            widget: Column(
          children: items2
              .map(
                (e) => ListTileItem(
                  title: e.title,
                  tailing: e.tailing,
                ),
              )
              .toList(),
        )),
        const Gap(25),
        CustomButton(
          onPressed: () {},
          text: S.of(context).proceed,
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
