import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParkingLotId extends StatelessWidget {
  const ParkingLotId({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8.h,
      ),
      child: CircleAvatar(
        backgroundColor: const Color(AppColors.kPrimaryColor),
        radius: 23,
        child: CircleAvatar(
          backgroundColor: const Color(AppColors.kWhiteColor),
          radius: 20,
          child: Text(
            name,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: const Color(AppColors.kPrimaryColor),
                ),
          ),
        ),
      ),
    );
  }
}
