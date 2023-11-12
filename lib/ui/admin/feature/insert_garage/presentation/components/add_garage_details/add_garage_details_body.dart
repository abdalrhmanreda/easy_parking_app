import 'package:easy_parking_app/ui/admin/feature/insert_garage/presentation/components/add_garage_details/select_location.dart';
import 'package:easy_parking_app/ui/admin/feature/insert_garage/presentation/controller/insert_garage_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../config/colors/app_colors.dart';
import '../../../../../../../config/routes/routes_path.dart';
import '../../../../../../../core/user/components/custom_button.dart';
import '../../../../../../../core/user/components/custom_navigatation.dart';
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
    TextEditingController numberOfSpotsController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: BlocConsumer<InsertGarageCubit, InsertGarageStates>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AddGarageItem(
                    title: S.of(context).garageNameAdminInterFace,
                    maxLine: 1,
                    height: 15,
                    isRequired: true,
                    controller: garageNameController,
                  ),
                  const SelectLocation(),
                  buildLatAndLonFeild(
                    context: context,
                    latController: latController,
                    lonController: lonController,
                  ),
                  BuildDropDownButtonNumberOfFloorAndNumberOfSpot(
                      controller: numberOfSpotsController),
                  AddGarageItem(
                    title: S.of(context).descriptionAdminInterFace,
                    maxLine: null,
                    isRequired: true,
                    height: 20,
                    controller: descController,
                  ),
                  CustomButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        CustomNavigation.navigateByNamedTo(
                            context, AdminRoutePath.garageFeature);
                      }
                    },
                    text: S.of(context).onBoardingButtonText,
                    radius: 15,
                    color: AppColors.kPrimaryColor,
                    textColor: AppColors.kWhiteColor,
                    height: 37.h,
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
