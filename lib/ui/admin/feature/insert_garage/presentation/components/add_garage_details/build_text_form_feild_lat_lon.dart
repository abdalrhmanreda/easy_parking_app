import 'package:flutter/material.dart';

import '../../../../../../../core/user/constant/app_constant.dart';
import '../../../../../../../generated/l10n.dart';
import 'add_garage_item.dart';

class BuildTextFormFeildLatAndLon extends StatelessWidget {
  const BuildTextFormFeildLatAndLon(
      {super.key, required this.latController, required this.lonController});
  final TextEditingController latController;
  final TextEditingController lonController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AddTextFormFeildWithRichText(
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
          child: AddTextFormFeildWithRichText(
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
}
