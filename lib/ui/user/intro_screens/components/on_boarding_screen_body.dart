import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/cache/hive_cache.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../core/user/components/custom_button.dart';
import '../../../../core/user/components/custom_smooth_indicator.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import 'on_boarding_item.dart';
import 'on_boarding_item_content/on_boarding_item_content.dart';

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({super.key});

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {
  List<OnBoardingItemContent> getItems(BuildContext context) {
    return [
      OnBoardingItemContent(
        title: S.of(context).onBoardingTitle1,
        description: S.of(context).onBoardingDescription1,
        image: Assets.onBoardingParking1,
      ),
      OnBoardingItemContent(
        title: S.of(context).onBoardingTitle2,
        description: S.of(context).onBoardingDescription2,
        image: Assets.onBoardingParking2,
      ),
      OnBoardingItemContent(
        title: S.of(context).onBoardingTitle3,
        description: S.of(context).onBoardingDescription3,
        image: Assets.onBoardingParking3,
      ),
    ];
  }

// Usage
  PageController pageController = PageController();

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / 25,
        vertical: MediaQuery.of(context).size.height / 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              onPageChanged: _onPageChanged,
              controller: pageController,
              itemCount: getItems(context).length,
              itemBuilder: (context, index) => OnBoardingItem(
                onBoardingItemContent:
                    getItems(context)[index], //getItems(context)[index], ,
                context: context,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          CustomSmoothIndicator(
              pageController: pageController, count: getItems(context).length),
          SizedBox(
            height: MediaQuery.of(context).size.height / 100,
          ),
          CustomButton(
            onPressed: () {
              if (isLast) {
                HiveCache.saveData(key: 'onBoarding', value: true)
                    .then((value) {
                  CustomNavigation.navigateAndFinishNyNamed(
                      context, RoutePath.login);
                });
              } else {
                pageController.nextPage(
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.fastEaseInToSlowEaseOut);
              }
            },
            text: S.of(context).onBoardingButtonText,
            height: 35.h,
            width: MediaQuery.of(context).size.width / 2,
            vertical: 15.h,
            horizontal: 0,
            radius: 15,
            color: AppColors.kPrimaryColor,
            textColor: 0xffffffff,
            fontSize: 14.sp,
          ),
        ],
      ),
    );
  }

  void _onPageChanged(index) {
    if (index == getItems(context).length - 1) {
      setState(() {
        isLast = true;
      });
    } else {
      setState(() {
        isLast = false;
      });
    }
  }
}
