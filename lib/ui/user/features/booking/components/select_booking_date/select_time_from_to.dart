import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:easy_parking_app/core/user/components/custom_text_form_feild.dart';
import 'package:easy_parking_app/core/user/constant/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../generated/l10n.dart';

class SelectTimeFromTo extends StatelessWidget {
  const SelectTimeFromTo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var startTimeController = TextEditingController();

    var endTimeController = TextEditingController();
    return SizedBox(
      width: AppConstant.deviceWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(S.of(context).startTime),
                    const Gap(10),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
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
              const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                child: Icon(IconlyBroken.arrow_right),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(S.of(context).endTime),
                    const Gap(10),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
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
        ],
      ),
    );
  }
}
