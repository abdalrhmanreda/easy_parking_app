import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../generated/l10n.dart';

Column buildTextsForgetScreen(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        S.of(context).loginScreenForgetPassword,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
        textAlign: TextAlign.start,
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height / 50,
      ),
      Text(
        S.of(context).forgetScreenDescription,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 13.sp,
              color: Colors.grey,
            ),
        textAlign: TextAlign.start,
      ),
    ],
  );
}
