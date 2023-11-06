import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../core/user/constant/app_constant.dart';
import '../../../../../../generated/l10n.dart';

class BuildDropDownButtonForNumOfFloor extends StatefulWidget {
  BuildDropDownButtonForNumOfFloor({super.key});

  @override
  State<BuildDropDownButtonForNumOfFloor> createState() =>
      _BuildDropDownButtonForNumOfFloorState();
  int selectedValue = 1;
}

class _BuildDropDownButtonForNumOfFloorState
    extends State<BuildDropDownButtonForNumOfFloor> {
  @override
  Widget build(BuildContext context) {
    List<int> floors = [1, 2, 3, 4, 5];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: '* ',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 16.sp,
                  color: const Color(AppColors.starColor),
                ),
            children: [
              TextSpan(
                text: S.of(context).NumberOfFloorAdminInterFace,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 16.sp,
                    ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: AppConstant.deviceHeight(context) / 75,
        ),
        Container(
          width: AppConstant.deviceWidth(context) / 3,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            shape: BoxShape.rectangle,
            border: Border.all(
              style: BorderStyle.solid,
              color: Colors.grey,
            ),
          ),
          child: DropdownButton(
            value: widget.selectedValue,
            icon: const Icon(IconlyBroken.arrow_down_2),
            isExpanded: true,
            underline: const SizedBox(),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            items: floors
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text('$e'),
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                widget.selectedValue = value!;
                print(widget.selectedValue);
              });
            },
            hint: const Text('Floors'),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        SizedBox(
          height: AppConstant.deviceHeight(context) / 75,
        ),
      ],
    );
  }
}
