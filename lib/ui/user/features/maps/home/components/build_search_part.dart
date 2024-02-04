import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../../config/colors/app_colors.dart';
import '../../../../../../../core/user/components/custom_text_form_feild.dart';
import '../../../../../../../generated/l10n.dart';
import 'bulid_search_bottom_sheet.dart';

Align buildSearchPart(
    BuildContext context, TextEditingController searchController) {
  bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
  return Align(
    alignment: Alignment.topCenter,
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: () {
          bulidSearchBottomSheet(context, searchController);
        },
        child: Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 50,
          ),
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
            color: const Color(AppColors.kLightGreyColor),
            border: Border.all(
                style: BorderStyle.solid,
                color: const Color(AppColors.kGrayColor)),
            borderRadius: BorderRadius.circular(15),
          ),
          child: CustomTextFormField(
            isPassword: false,
            label: S.of(context).search,
            type: TextInputType.text,
            isEnable: false,
            border: InputBorder.none,
            prefixIcon: IconlyBroken.search,
            suffixIcon: IconlyBroken.voice,
            suffixPressed: () {},
            edgeInsetsGeometry: const EdgeInsets.symmetric(vertical: 7),
          ),
        ),
      ),
    ),
  );
}
/*
FloatingSearchBar(
        controller: searchController,
        hint: S.of(context).search,
        queryStyle: Theme.of(context).textTheme.bodyMedium,
        margins: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(10),
        height: 52.h,
        scrollPadding: const EdgeInsets.only(top: 15, bottom: 56),
        transitionDuration: const Duration(milliseconds: 600),
        transitionCurve: Curves.easeInOut,
        physics: const BouncingScrollPhysics(),
        openAxisAlignment: 0,
        axisAlignment: isPortrait ? 0.0 : -1.0,
        debounceDelay: const Duration(milliseconds: 500),
        onQueryChanged: (query) {},
        onFocusChanged: (value) {},
        transition: CircularFloatingSearchBarTransition(),
        actions: [
          FloatingSearchBarAction(
            showIfOpened: false,
            child: CircularButton(
              icon: const Icon(Icons.place),
              onPressed: () {},
            ),
          ),
          FloatingSearchBarAction.searchToClear(
            showIfClosed: false,
          ),
        ],
        builder: (context, transition) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Material(
              color: Colors.white,
              elevation: 4.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: Colors.accents.map((color) {
                  return Container(height: 112, color: color);
                }).toList(),
              ),
            ),
          );
        },
      ),
* */
