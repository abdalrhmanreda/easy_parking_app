import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:easy_parking_app/generated/assets.dart';
import 'package:easy_parking_app/ui/user/cubit/app_cubit.dart';
import 'package:easy_parking_app/ui/user/cubit/app_state.dart';
import 'package:easy_parking_app/ui/user/intro_screens/components/on_boarding_item.dart';
import 'package:easy_parking_app/ui/user/intro_screens/components/on_boarding_item_content/on_boarding_item_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../core/user/components/custom_button.dart';
import '../../../../../../generated/l10n.dart';

class EnableLocationScreenBody extends StatelessWidget {
  const EnableLocationScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppCubit, AppStates>(
      listener: (context, state) {
        if (state is GetLatAndLonSuccessState) {
          CustomNavigation.navigateByNamedTo(context, RoutePath.layout);
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 25,
          vertical: MediaQuery.of(context).size.height / 25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OnBoardingItem(
                onBoardingItemContent: OnBoardingItemContent(
                  image: Assets.enableLocationEnableLocation,
                  description: S.of(context).enableLocationDescription,
                  title: S.of(context).enableLocationTitle,
                ),
                context: context),
            CustomButton(
              onPressed: () {
                AppCubit.get(context).getCurrentLocation();
              },
              text: S.of(context).enableLocationButton,
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
      ),
    );
  }
}
