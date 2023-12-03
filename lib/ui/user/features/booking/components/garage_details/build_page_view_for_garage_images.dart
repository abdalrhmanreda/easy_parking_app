import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/user/components/custom_smooth_indicator.dart';
import '../../../../../../core/user/constant/app_constant.dart';
import '../../../../../../generated/assets.dart';

class BuildPageViewForGarageImages extends StatelessWidget {
  const BuildPageViewForGarageImages({super.key});

  @override
  Widget build(BuildContext context) {
    var pageController = PageController();

    return SizedBox(
      height: AppConstant.deviceHeight(context) / 3.2,
      child: Column(
        children: [
          SizedBox(
            height: AppConstant.deviceHeight(context) / 3.6,
            child: PageView.builder(
              controller: pageController,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage(Assets.testGarage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              itemCount: 3,
            ),
          ),
          const Gap(15),
          CustomSmoothIndicator(pageController: pageController, count: 3),
        ],
      ),
    );
  }
}
