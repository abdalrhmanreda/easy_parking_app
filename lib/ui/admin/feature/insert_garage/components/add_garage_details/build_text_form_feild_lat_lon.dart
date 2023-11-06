import 'package:flutter/material.dart';

import '../../../../../../core/user/constant/app_constant.dart';
import '../../../../../../generated/l10n.dart';
import 'add_garage_item.dart';

Row buildLatAndLonFeild({
  required BuildContext context,
  required TextEditingController latController,
  required TextEditingController lonController,
}) {
  return Row(
    children: [
      Expanded(
        child: AddGarageItem(
          title: S.of(context).latitudesAdminInterFace,
          maxLine: 1,
          height: 15,
          isRequired: true,
          controller: latController,
        ),
      ),
      SizedBox(
        width: AppConstant.deviceWidth(context) / 15,
      ),
      Expanded(
        child: AddGarageItem(
          title: S.of(context).longitudesAdminInterFace,
          maxLine: 1,
          height: 15,
          isRequired: true,
          controller: lonController,
        ),
      ),
    ],
  );
}
