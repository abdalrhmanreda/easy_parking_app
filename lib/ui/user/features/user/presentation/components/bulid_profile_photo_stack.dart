import 'package:flutter/material.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../generated/assets.dart';

Stack bulidProfilePhotoStack() {
  return const Stack(
    alignment: AlignmentDirectional.bottomEnd,
    children: [
      CircleAvatar(
        radius: 70.0,
        backgroundImage: AssetImage(Assets.test1652687833047),
      ),
      CircleAvatar(
        backgroundColor: Color(AppColors.kPrimaryColor),
        radius: 20.0,
        child: Icon(
          Icons.camera_alt,
          color: Colors.white,
          size: 30.0,
        ),
      ),
    ],
  );
}
