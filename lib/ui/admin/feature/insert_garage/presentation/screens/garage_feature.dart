import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:easy_parking_app/core/user/components/custom_button.dart';
import 'package:easy_parking_app/core/user/constant/app_constant.dart';
import 'package:easy_parking_app/ui/admin/feature/insert_garage/presentation/components/garage_feature/build_list_of_feature.dart';
import 'package:easy_parking_app/ui/admin/feature/insert_garage/presentation/controller/insert_garage_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../generated/l10n.dart';
import '../components/garage_feature/upload_images.dart';

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
          appBar: AppBar(
            title: Text(S.of(context).garageFeatureAdminInterFace),
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
                        // if (InsertGarageCubit.get(context).images.isNotEmpty)
                        // buildPageViewForGarage(
                        //   context: context,
                        //   images: InsertGarageCubit.get(context).images,
                        // ),
                        uploadIcon(context),
                        Text(
                          S.of(context).garageImagesAdminInterFace,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                  const ListOfFeature(),
                  CustomButton(
                    onPressed: () {
                      // showToast(
                      //     message: S.of(context).garageAddedSuccessfully,
                      //     state: ToastState.SUCCESS);
                      // CustomNavigation.navigateByNamedTo(
                      //     context, AdminRoutePath.getAllGarages);
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
          ),
        );
      },
    );
  }
}
