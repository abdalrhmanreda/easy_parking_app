import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../config/routes/routes_path.dart';
import '../../../../../../core/user/components/custom_button.dart';
import '../../../../../../core/user/components/custom_navigatation.dart';
import '../../../../../../core/user/constant/app_constant.dart';
import '../../../../../../generated/l10n.dart';
import 'add_garage_item.dart';
import 'build_drop_down_button_for_num_of_floor.dart';
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
    TextEditingController locationController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AddGarageItem(
                title: S.of(context).garageNameAdminInterFace,
                maxLine: 1,
                height: 15,
                isRequired: true,
                controller: garageNameController,
              ),
              AddGarageItem(
                title: S.of(context).locationAdminInterFace,
                maxLine: 1,
                height: 15,
                isRequired: true,
                controller: locationController,
              ),
              buildLatAndLonFeild(
                context: context,
                latController: latController,
                lonController: lonController,
              ),
              BuildDropDownButtonForNumOfFloor(),
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
          ),
        ),
      ),
    );
  }
}
