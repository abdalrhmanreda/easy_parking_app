import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:easy_parking_app/core/admin/components/build_app_bar.dart';
import 'package:easy_parking_app/core/user/components/custom_button.dart';
import 'package:easy_parking_app/core/user/components/flutter_toast.dart';
import 'package:easy_parking_app/core/user/constant/app_constant.dart';
import 'package:easy_parking_app/ui/admin/feature/insert_garage/presentation/controller/insert_garage_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../generated/l10n.dart';
import '../components/garage_feature/page_view_for_garage.dart';

class GarageFeatureScreen extends StatefulWidget {
  const GarageFeatureScreen({super.key});

  @override
  State<GarageFeatureScreen> createState() => _GarageFeatureScreenState();
}

class _GarageFeatureScreenState extends State<GarageFeatureScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocConsumer<InsertGarageCubit, InsertGarageStates>(
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
                      if (InsertGarageCubit.get(context).images.isNotEmpty)
                        buildPageViewForGarage(
                          context: context,
                          images: InsertGarageCubit.get(context).images,
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
                  S.of(context).garageFeature,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 15.sp,
                      ),
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount:
                        InsertGarageCubit.get(context).features(context).length,
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        title: Text(InsertGarageCubit.get(context)
                            .features(context)[index]
                            .title!),
                        value: InsertGarageCubit.get(context)
                            .features(context)[index]
                            .value,
                        onChanged: (newValue) {
                          setState(() {
                            InsertGarageCubit.get(context)
                                .features(context)[index]
                                .value = newValue!;
                            print(InsertGarageCubit.get(context)
                                .features(context)[index]
                                .value);
                          });
                        },
                      );
                    }),
                CustomButton(
                  onPressed: () {
                    showToast(
                        message: 'garage Added Successfully',
                        state: ToastState.SUCCESS);
                  },
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
          InsertGarageCubit.get(context).loadAssets();
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
