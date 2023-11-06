import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:easy_parking_app/core/admin/components/build_app_bar.dart';
import 'package:easy_parking_app/core/user/components/custom_button.dart';
import 'package:easy_parking_app/core/user/constant/app_constant.dart';
import 'package:easy_parking_app/ui/admin/cubit/admin_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../../../generated/l10n.dart';
import '../components/garage_feature/page_view_for_garage.dart';

class GarageFeatureScreen extends StatelessWidget {
  const GarageFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocConsumer<AdminCubit, AdminStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: buildAppBar(
            context: context,
            title: S.of(context).garageFeatureAdminInterFace,
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: AppConstant.deviceHeight(context) / 2,
                  width: AppConstant.deviceWidth(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (AdminCubit.get(context).images.isNotEmpty)
                        buildPageViewForGarage(
                          context: context,
                          images: AdminCubit.get(context).images,
                        ),
                      uploadIcon(context),
                      Text(
                        S.of(context).garageImagesAdminInterFace,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 15.sp,
                            ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Additional features',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 15.sp,
                      ),
                ),
                Column(
                  children: AdminCubit.get(context)
                      .features
                      .map(
                        (e) => CheckboxListTile(
                          selected: e.value,
                          value: e.value,
                          activeColor: const Color(AppColors.kPrimaryColor),
                          title: Text(e.title),
                          onChanged: (bool? value) {
                            AdminCubit.get(context).changeValue(value!);
                            print(value);
                          },
                        ),
                      )
                      .toList(),
                ),
                CustomButton(
                  onPressed: () {},
                  text: S.of(context).insert,
                  radius: 15,
                  color: AppColors.kPrimaryColor,
                  textColor: AppColors.kWhiteColor,
                  height: 37.h,
                  width: AppConstant.deviceWidth(context),
                  vertical: 0,
                  horizontal: 0,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Padding uploadIcon(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        onPressed: () {
          AdminCubit.get(context).loadAssets();
        },
        icon: const Icon(
          IconlyBroken.upload,
          size: 38,
          color: Color(AppColors.kGrayColor),
        ),
      ),
    );
  }
}
