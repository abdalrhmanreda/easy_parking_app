import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../../config/colors/app_colors.dart';
import '../../../../../../../core/user/constant/app_constant.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({super.key});

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  @override
  Widget build(BuildContext context) {
    String selectedValue = "Minya";
    List<String> list = [
      "Minya",
      "Adwa",
      "Maghagha",
      "Beni Mazar",
      "Matai",
      "Samalout",
      "Abu Qurqas",
      "Mallawi",
      "Deir Mawas"
    ];
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 15,
      ),
      child: Row(
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
                        text: 'city',
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
                    icon: const Icon(IconlyBroken.arrow_down_2),
                    isExpanded: true,
                    value: selectedValue,
                    underline: const SizedBox(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    items: list
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                    hint: const Text('city'),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: AppConstant.deviceWidth(context) / 30,
          ),
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
                        text: 'government',
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
                    icon: const Icon(IconlyBroken.arrow_down_2),
                    isExpanded: true,
                    value: selectedValue,
                    underline: const SizedBox(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    items: list
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                    hint: const Text('city'),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
