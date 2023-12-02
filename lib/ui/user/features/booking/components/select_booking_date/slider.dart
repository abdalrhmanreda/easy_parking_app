import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:easy_parking_app/core/user/components/custom_text_form_feild.dart';
import 'package:easy_parking_app/core/user/constant/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../generated/l10n.dart';

class SliderPart extends StatefulWidget {
  const SliderPart({
    super.key,
  });

  @override
  State<SliderPart> createState() => _SliderPartState();
}

class _SliderPartState extends State<SliderPart> {
  double selectedValue = 1;
  var startTimeController = TextEditingController();
  var endTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppConstant.deviceWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Slider(
            value: selectedValue,
            min: 1,
            max: 15,
            onChanged: (double value) {
              setState(() {
                selectedValue = value;
                print(selectedValue.round());
              });
            },
            divisions: 100,
            label: '${selectedValue.round()} hour',
            autofocus: true,
            focusNode: primaryFocus,
            activeColor: const Color(AppColors.kDarkSkyBlueColor),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(S.of(context).startTime),
                    const Gap(10),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(AppColors.kLightGreyColor),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: CustomTextFormField(
                        controller: startTimeController,
                        isPassword: false,
                        edgeInsetsGeometry: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        suffixIcon: IconlyBroken.time_circle,
                        onTap: () {
                          showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                            builder: (context, child) => Theme(
                                data: ThemeData.light().copyWith(
                                  dialogTheme: DialogTheme(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                child: child!),
                          ).then((value) {
                            startTimeController.text = value!.format(context);
                            debugPrint(startTimeController.toString());
                          });
                        },
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(25),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(S.of(context).endTime),
                    const Gap(10),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(AppColors.kLightGreyColor),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: CustomTextFormField(
                        controller: endTimeController,
                        isPassword: false,
                        edgeInsetsGeometry: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        suffixIcon: IconlyBroken.time_circle,
                        onTap: () {
                          showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                            builder: (context, child) => Theme(
                                data: ThemeData.light().copyWith(
                                  dialogTheme: DialogTheme(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                child: child!),
                          ).then((value) {
                            endTimeController.text = value!.format(context);
                            debugPrint(startTimeController.toString());
                          });
                        },
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
      ),
    );
  }
}
