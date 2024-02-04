import 'package:easy_parking_app/ui/admin/feature/insert_garage/presentation/controller/insert_garage_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../../config/colors/app_colors.dart';
import '../../../../../../../core/user/constant/app_constant.dart';
import '../../../../../../../generated/l10n.dart';
import 'add_garage_item.dart';

class BuildDropDownButtonNumberOfFloorAndNumberOfSpot extends StatefulWidget {
  BuildDropDownButtonNumberOfFloorAndNumberOfSpot(
      {super.key, required this.controller});
  List<int> floors = [1, 2, 3, 4, 5];
  final TextEditingController controller;

  @override
  State<BuildDropDownButtonNumberOfFloorAndNumberOfSpot> createState() =>
      _BuildDropDownButtonNumberOfFloorAndNumberOfSpotState();
}

class _BuildDropDownButtonNumberOfFloorAndNumberOfSpotState
    extends State<BuildDropDownButtonNumberOfFloorAndNumberOfSpot> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
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
              Gap(10.h),
              Container(
                width: AppConstant.deviceWidth(context) / 2.5,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Colors.grey,
                  ),
                ),
                child: DropdownButton(
                  icon: const Icon(IconlyBroken.arrow_down_2),
                  isExpanded: true,
                  value: InsertGarageCubit.get(context).selectedValue,
                  underline: const SizedBox(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  items: widget.floors
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text('$e'),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      InsertGarageCubit.get(context).selectedValue = value!;
                    });
                  },
                  hint: Text(
                    S
                        .of(context)
                        .NumberOfFloorAdminInterFace
                        .toLowerCase()
                        .substring(
                            10,
                            S.of(context).NumberOfFloorAdminInterFace.length -
                                1),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Gap(10.h),
            ],
          ),
        ),
        Expanded(
          child: AddTextFormFeildWithRichText(
            title: 'Number of places',
            isRequired: true,
            controller: widget.controller,
            height: 15,
          ),
        ),
      ],
    );
  }
}
