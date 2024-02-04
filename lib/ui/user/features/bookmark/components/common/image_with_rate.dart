import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'garage_rate.dart';

class ImageWithRate extends StatelessWidget {
  const ImageWithRate({super.key, required this.image, required this.rate});
  final String image;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            width: 120.w,
            height: 150.h,
          ),
        ),
        GarageRate(rate: rate),
      ],
    );
  }
}
