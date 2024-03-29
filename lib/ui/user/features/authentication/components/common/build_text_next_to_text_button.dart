import 'package:easy_parking_app/core/user/methods/get_responsive_text/responsive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/user/components/custom_text_button.dart';

Widget customTextNextToTextButton({
  required BuildContext context,
  String text = "",
  required String textButton,
  VoidCallback? onPressed,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: getResponsiveFontSize(context, fontSize: 16.sp),
                fontWeight: FontWeight.w500,
              ),
        ),
        CustomTextButton(
          onPressed: () {
            onPressed?.call();
          },
          text: textButton,
          fontSize: getResponsiveFontSize(context, fontSize: 16.sp),
        ),
      ],
    );
