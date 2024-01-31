import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../generated/l10n.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({
    super.key,
  });

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double selectedValue = 1.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SliderTheme(
          data: const SliderThemeData(
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
            thumbColor: Color(AppColors.kPrimaryColor),
            activeTrackColor: Color(AppColors.kPrimaryColor),
            inactiveTrackColor: Color(AppColors.kGrayColor),
            valueIndicatorColor: Color(AppColors.kPrimaryColor),
            activeTickMarkColor: Colors.transparent,
            inactiveTickMarkColor: Colors.transparent,
          ),
          child: Slider(
            value: selectedValue,
            min: 1.0,
            max: 24.0,
            divisions: 24,
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            },
            label: selectedValue.round().toString(),
          ),
        ),
        const Gap(15),
        Text(
          S.of(context).total,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 16.sp,
              ),
        ),
        const Gap(10),
        Text(
          'EG ${30 * selectedValue.round()}/${selectedValue.round()} hour',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 18.sp,
              ),
        ),
      ],
    );
  }
}
