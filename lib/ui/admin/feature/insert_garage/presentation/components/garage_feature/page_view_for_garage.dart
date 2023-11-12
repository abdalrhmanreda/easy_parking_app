import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

import '../../../../../../../core/user/constant/app_constant.dart';

SizedBox buildPageViewForGarage({
  required BuildContext context,
  required List<Asset> images,
}) {
  return SizedBox(
    width: AppConstant.deviceWidth(context),
    height: AppConstant.deviceHeight(context) / 3,
    child: PageView(
      children: images
          .map(
            (e) => Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetThumbImageProvider(
                    e,
                    width: AppConstant.deviceWidth(context).round(),
                    height: (AppConstant.deviceHeight(context) / 3).round(),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    ),
  );
}
