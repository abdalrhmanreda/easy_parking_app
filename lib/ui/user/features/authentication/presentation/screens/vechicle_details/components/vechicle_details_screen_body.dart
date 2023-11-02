import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:easy_parking_app/core/user/components/custom_text_form_feild.dart';
import 'package:easy_parking_app/core/user/constant/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/user/components/custom_button.dart';
import '../../../../../../../../generated/l10n.dart';
import 'bulid_vechicle_texts.dart';
import 'bulid_vehicle_type.dart';

class VechicleDetailsScreenBody extends StatelessWidget {
  const VechicleDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var vechicleNumberController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildVechicleTexts(context),
            CustomTextFormField(
              isPassword: false,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              label: S.of(context).vechicleDetailsNumber,
              controller: vechicleNumberController,
              validate: (value) {
                if (value!.isEmpty) {
                  return 'vechicle should be not empty';
                } else {
                  return null;
                }
              },
            ),
            const BuildChooseVehicleType(),
            CustomButton(
              text: S.of(context).forgetPassButton,
              onPressed: () {},
              height: 42.h,
              width: AppConstant.deviceWidth(context),
              textColor: AppColors.kWhiteColor,
              horizontal: 0,
              vertical: 0,
              radius: 15,
              color: AppColors.kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
