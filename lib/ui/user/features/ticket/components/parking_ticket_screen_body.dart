import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:easy_parking_app/ui/user/features/ticket/components/ticket_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/user/components/custom_button.dart';
import '../../../../../generated/l10n.dart';

class ParkingTicketScreenBody extends StatelessWidget {
  const ParkingTicketScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          const TicketDetails(),
          CustomButton(
            onPressed: () {
              CustomNavigation.navigateByNamedTo(
                  context, RoutePath.goToParkingLot);
            },
            text: S.of(context).navigateToParkingLot,
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
