import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:easy_parking_app/core/user/components/custom_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../../generated/l10n.dart';
import '../../../../bookmark/presentation/components/bulid_book_mark_item.dart';

void bulidSearchBottomSheet(
    BuildContext context, TextEditingController searchController) {
  showModalBottomSheet(
    enableDrag: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(15),
        topLeft: Radius.circular(15),
      ),
    ),
    context: context,
    builder: (context) => Container(
      padding: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.5,
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
            ),
            const Gap(20),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) => BookMarkItem(
                garageName: S.of(context).parkName,
                distance: '150 m',
                location: 'Naser city , Cairo',
                spots: '50',
                button: S.of(context).bookNow,
                onPressed: () {
                  CustomNavigation.navigateByNamedTo(
                      context, RoutePath.garageDetails);
                },
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
