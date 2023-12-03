import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:easy_parking_app/ui/user/features/booking/components/garage_details/build_page_view_for_garage_images.dart';
import 'package:easy_parking_app/ui/user/features/booking/components/garage_details/service_we_provide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../core/user/components/custom_button.dart';
import '../../../../../../generated/l10n.dart';
import 'build_garage_name_and_rate.dart';

class GarageDetailsScreenBody extends StatelessWidget {
  const GarageDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const BuildPageViewForGarageImages(),
                  const Gap(10),
                  buildGarageNameAndRate(context),
                  const Gap(20),
                  buildServicesWeProvide(context),
                  const Gap(20),
                  Text(
                    S.of(context).garageDescription,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          height: 1.5,
                        ),
                  ),
                ],
              ),
            ),
          ),
          CustomButton(
            onPressed: () {
              CustomNavigation.navigateByNamedTo(
                  context, RoutePath.selectBookingDate);
            },
            text: S.of(context).bookNow,
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
    );
  }
}
