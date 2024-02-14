import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/user/constant/app_constant.dart';

class Places extends StatelessWidget {
  const Places({super.key, required this.widget, required this.angle});
  final Widget widget;
  final double angle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (angle > 0)
          Padding(
            padding: EdgeInsets.only(
              left: 15.w,
            ),
            child: DottedDashedLine(
              height: AppConstant.deviceHeight(context),
              width: 2,
              axis: Axis.vertical,
              dashColor: Colors.grey,
            ),
          ),
        SizedBox(
          width: AppConstant.deviceWidth(context) / 3,
          height: AppConstant.deviceHeight(context),
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => Column(
              children: [
                if (index != 0)
                  Transform.rotate(
                    angle: angle,
                    child: DottedDashedLine(
                      height: 2,
                      width: AppConstant.deviceWidth(context) / 3,
                      axis: Axis.horizontal,
                      dashColor: Colors.grey,
                    ),
                  ),
                InkWell(
                  onTap: () {
                    CustomNavigation.navigateByNamedTo(
                        context, RoutePath.bookingSummary);
                  },
                  child: widget,
                ),
              ],
            ),
            itemCount: 10,
          ),
        ),
        if (angle < 0)
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: DottedDashedLine(
              height: AppConstant.deviceHeight(context),
              width: 2,
              axis: Axis.vertical,
              dashColor: Colors.grey,
            ),
          ),
      ],
    );
  }
}
