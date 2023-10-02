import 'package:easy_parking_app/core/user/components/custom_divider.dart';
import 'package:easy_parking_app/ui/user/features/user/presentation/components/bulid_profile_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bulid_profile_photo_stack.dart';
import 'bulid_texts_and_button.dart';

Padding buildProfileScreenBody(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: MediaQuery.of(context).size.width / 50,
    ),
    child: Column(
      children: [
        bulidProfilePhotoStack(),
        SizedBox(
          height: MediaQuery.of(context).size.height / 50,
        ),
        bulidTextsAndButton(context),
        myDivider(MediaQuery.of(context).size.width, 1.h),
        SizedBox(
          height: MediaQuery.of(context).size.height / 50,
        ),
        bulidProfileItems(context),
      ],
    ),
  );
}
