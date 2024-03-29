import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:easy_parking_app/core/user/components/custom_slider.dart';
import 'package:easy_parking_app/ui/user/features/booking/components/select_booking_date/select_time_from_to.dart';
import 'package:easy_parking_app/ui/user/features/booking/components/select_booking_date/table_calender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../core/user/components/custom_button.dart';
import '../../../../../../generated/l10n.dart';

class SelectBookingDateScreenBody extends StatelessWidget {
  const SelectBookingDateScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TableCalenderPart(),
            Gap(15.h),
            Text(
              S.of(context).duration,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 17.sp,
                  ),
            ),
            Gap(25.h),
            const SelectTimeFromTo(),
            Gap(15.h),
            const CustomSlider(),
            Gap(15.h),
            CustomButton(
              onPressed: () {
                CustomNavigation.navigateByNamedTo(
                    context, AdminRoutePath.garagePlaces);
              },
              text: S.of(context).continueButton,
              height: 37.h,
              width: MediaQuery.of(context).size.width,
              vertical: 15.h,
              horizontal: 0,
              radius: 15,
              color: AppColors.kPrimaryColor,
              textColor: 0xffffffff,
              fontSize: 14.sp,
            ),
          ],
        ),
      ),
    );
  }
}
