import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../../config/colors/app_colors.dart';
import '../../controller/insert_garage_cubit.dart';

Padding uploadIcon(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: IconButton(
      onPressed: () {
        InsertGarageCubit.get(context).pickGarageImage();
      },
      icon: const Icon(
        IconlyBroken.upload,
        size: 38,
        color: Color(AppColors.kGrayColor),
      ),
    ),
  );
}
