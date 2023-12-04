import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../config/colors/app_colors.dart';
import '../../../../../core/user/constant/app_constant.dart';

class MethodPaymentButton extends StatelessWidget {
  const MethodPaymentButton(
      {super.key, required this.image, required this.method});
  final String image;
  final String method;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CustomNavigation.navigateByNamedTo(context, RoutePath.parkingTicket);
      },
      child: Container(
        width: AppConstant.deviceWidth(context) / 1.5,
        height: 37.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            style: BorderStyle.solid,
            color: const Color(AppColors.kPrimaryColor),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 50,
            ),
            const Gap(10),
            Text(method),
          ],
        ),
      ),
    );
  }
}
