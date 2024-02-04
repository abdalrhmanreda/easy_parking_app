import 'package:easy_parking_app/core/user/constant/app_constant.dart';
import 'package:flutter/material.dart';

import '../../../booking/components/garage_details/garage_details_screen_body.dart';

void bulidGarageDetailsBottomSheet(
  BuildContext context,
) {
  showModalBottomSheet(
    isScrollControlled: true,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(10),
        topLeft: Radius.circular(10),
      ),
    ),
    context: context,
    builder: (context) => SizedBox(
        height: AppConstant.deviceHeight(context) / 1.2,
        child: const GarageDetailsScreenBody()),
  );
}
