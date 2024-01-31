import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:easy_parking_app/core/user/constant/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/colors/app_colors.dart';
import '../../../../../core/user/components/custom_button.dart';
import '../../../../../generated/l10n.dart';

class GoToParkingLotScreen extends StatelessWidget {
  const GoToParkingLotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String image =
        'https://images.squarespace-cdn.com/content/v1/5c7006429d4149332c828cec/1551124524437-2Q5TEYXHCX81H759HZHO/parking+garage';
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CachedNetworkImage(
            imageUrl: image,
            width: AppConstant.deviceWidth(context),
            height: AppConstant.deviceHeight(context),
            fit: BoxFit.cover,
          ),
          CustomButton(
            onPressed: () {
              CustomNavigation.navigateByNamedTo(
                  context, RoutePath.parkingTimer);
            },
            text: S.of(context).ok,
            height: 37.h,
            width: MediaQuery.of(context).size.width,
            vertical: 15.h,
            horizontal: 15,
            radius: 15,
            color: AppColors.kPrimaryColor,
            textColor: AppColors.kWhiteColor,
            fontSize: 14.sp,
          ),
        ],
      ),
    );
  }
}
