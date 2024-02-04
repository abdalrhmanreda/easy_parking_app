import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../core/user/constant/app_constant.dart';
import '../../controller/book_mark_cubit.dart';

class BookmarkState extends StatelessWidget {
  const BookmarkState({
    super.key,
    required this.choiceItems,
  });

  final List<String> choiceItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 33.h,
          child: ListView.builder(
            padding: const EdgeInsets.all(5),
            scrollDirection: Axis.horizontal,
            itemCount: choiceItems.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                BookMarkCubit.get(context).changeTag(index);
                BookMarkCubit.get(context).tag = index;
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                alignment: Alignment.center,
                width: AppConstant.deviceWidth(context) / 3.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: index == BookMarkCubit.get(context).tag
                        ? const Color(AppColors.kPrimaryColor)
                        : const Color(AppColors.kGrayColor),
                  ),
                ),
                child: Text(
                  choiceItems[index],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: BookMarkCubit.get(context)
              .screens[BookMarkCubit.get(context).tag],
        )
      ],
    );
  }
}
