import 'package:easy_parking_app/core/user/components/custom_text_form_feild.dart';
import 'package:easy_parking_app/core/user/constant/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../../generated/l10n.dart';
import '../../../bookmark/components/common/bookmark_item.dart';

void bulidSearchBottomSheet(
    BuildContext context, TextEditingController searchController) {
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
    builder: (context) => Container(
      padding: const EdgeInsets.all(10),
      width: AppConstant.deviceWidth(context),
      height: AppConstant.deviceHeight(context) * (3 / 4),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            CustomTextFormField(
              isPassword: false,
              label: S.of(context).search,
              type: TextInputType.text,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              prefixIcon: IconlyBroken.search,
              suffixIcon: IconlyBroken.voice,
              suffixPressed: () {},
              controller: searchController,
              edgeInsetsGeometry: const EdgeInsets.symmetric(vertical: 10),
            ),
            const Gap(20),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) => BookmarkItem(
                garageName: S.of(context).parkName,
                distance: '150 m',
                location: 'Naser city , Cairo',
                spots: '50',
                state: 'search',
              ),
              itemCount: 10,
              physics: const NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
    ),
  );
}
