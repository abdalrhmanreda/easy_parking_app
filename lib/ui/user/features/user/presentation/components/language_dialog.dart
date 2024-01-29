import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/user/components/custom_text_button.dart';
import '../../../../../../core/user/constant/app_constant.dart';
import '../../../../../../generated/l10n.dart';
import 'language_radio.dart';

Future<dynamic> showLanguageDialog(context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        title: Text(S.of(context).selectLanguage),
        content: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return SizedBox(
              height: AppConstant.deviceHeight(context) / 3,
              width: AppConstant.deviceWidth(context) / 1.5,
              child: Column(
                children: <Widget>[
                  LanguageRadio(
                    language: S.of(context).english,
                    value: 'en',
                  ),
                  LanguageRadio(
                    language: S.of(context).arabic,
                    value: 'ar',
                  ),
                  LanguageRadio(
                    language: S.of(context).spanish,
                    value: 'sp',
                  ),
                  LanguageRadio(
                    language: S.of(context).french,
                    value: 'fr',
                  ),
                  const Spacer(),
                  CustomTextButton(onPressed: () {}, text: S.of(context).ok),
                ],
              ),
            );
          },
        ),
      );
    },
  );
}
