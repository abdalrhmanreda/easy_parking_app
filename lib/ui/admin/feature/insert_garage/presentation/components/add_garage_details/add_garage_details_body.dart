import 'package:easy_parking_app/config/routes/routes_path.dart';
import 'package:easy_parking_app/core/user/components/custom_navigatation.dart';
import 'package:easy_parking_app/ui/admin/feature/insert_garage/presentation/components/add_garage_details/select_location.dart';
import 'package:easy_parking_app/ui/admin/feature/insert_garage/presentation/controller/insert_garage_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../../config/colors/app_colors.dart';
import '../../../../../../../core/user/components/custom_button.dart';
import '../../../../../../../core/user/constant/app_constant.dart';
import '../../../../../../../generated/l10n.dart';
import 'add_garage_item.dart';
import 'build_drop_down_button_number_floor.dart';
import 'build_text_form_feild_lat_lon.dart';

class AddGarageDetailsScreenBody extends StatelessWidget {
  const AddGarageDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController garageNameController = TextEditingController();
    TextEditingController descController = TextEditingController();
    TextEditingController latController = TextEditingController();
    TextEditingController lonController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController numberOfSpotsController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: BlocConsumer<InsertGarageCubit, InsertGarageStates>(
            listener: (context, state) {
              // if (state is FailureState) {
              //   showToast(message: state.error, state: ToastState.ERROR);
              // } else if (state is AddGarageSuccessState) {
              //   CustomNavigation.navigateByNamedTo(
              //       context, AdminRoutePath.garageFeature);
              // }
              // TODO: implement listener
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AddTextFormFeildWithRichText(
                    title: S.of(context).garageNameAdminInterFace,
                    maxLine: 1,
                    height: 15,
                    isRequired: true,
                    controller: garageNameController,
                  ),
                  const SelectLocation(),
                  const Gap(15),
                  BuildTextFormFeildLatAndLon(
                    latController: latController,
                    lonController: lonController,
                  ),
                  BuildDropDownButtonNumberOfFloorAndNumberOfSpot(
                      controller: numberOfSpotsController),
                  AddTextFormFeildWithRichText(
                    title: S.of(context).loginScreenEmailAddress,
                    maxLine: 1,
                    isRequired: true,
                    height: 15,
                    controller: emailController,
                  ),
                  AddTextFormFeildWithRichText(
                    title: S.of(context).registerScreenUserName,
                    maxLine: 1,
                    isRequired: true,
                    height: 15,
                    controller: nameController,
                  ),
                  AddTextFormFeildWithRichText(
                    title: S.of(context).registerScreenUserPhone,
                    maxLine: 1,
                    isRequired: true,
                    height: 15,
                    controller: phoneController,
                  ),
                  AddTextFormFeildWithRichText(
                    title: S.of(context).descriptionAdminInterFace,
                    maxLine: null,
                    isRequired: true,
                    height: 15,
                    controller: descController,
                  ),
                  CustomButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        CustomNavigation.navigateByNamedTo(
                            context, AdminRoutePath.garageFeature);
                        // InsertGarageCubit.get(context).addGarage(
                        //   garageName: garageNameController.text,
                        //   location: 'Cairo',
                        //   numFloor:
                        //       InsertGarageCubit.get(context).selectedValue,
                        //   numOfSpace: int.parse(numberOfSpotsController.text),
                        //   lat: latController.text,
                        //   lon: lonController.text,
                        //   description: descController.text,
                        //   price: '30 \$',
                        // );
                      }
                    },
                    text: S.of(context).onBoardingButtonText,
                    radius: 10.r,
                    color: AppColors.kPrimaryColor,
                    textColor: AppColors.kWhiteColor,
                    height: 42.h,
                    width: AppConstant.deviceWidth(context),
                    vertical: 0,
                    horizontal: 0,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
