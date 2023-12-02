import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/user/constant/app_constant.dart';

class Places extends StatelessWidget {
  const Places({super.key, required this.image, required this.angle});
  final String image;
  final double angle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (angle > 0)
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
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
                Image.asset(
                  image,
                  width: 100,
                  height: 100,
                )
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
