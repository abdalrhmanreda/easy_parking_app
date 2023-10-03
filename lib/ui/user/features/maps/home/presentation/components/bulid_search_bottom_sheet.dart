import 'package:easy_parking_app/core/user/components/custom_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

void bulidSearchBottomSheet(
    BuildContext context, TextEditingController searchController) {
  showBottomSheet(
    enableDrag: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(25),
        topLeft: Radius.circular(15),
      ),
    ),
    context: context,
    builder: (context) => Container(
      padding: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.5,
      child: Column(
        children: [
          CustomTextFormField(
            isPassword: false,
            label: 'search',
            type: TextInputType.text,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            prefixIcon: IconlyBroken.search,
            suffixIcon: IconlyBroken.voice,
            suffixPressed: () {},
            controller: searchController,
          ),
        ],
      ),
    ),
  );
}
