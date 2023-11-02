import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:easy_parking_app/core/user/components/custom_button.dart';
import 'package:easy_parking_app/core/user/constant/app_constant.dart';
import 'package:easy_parking_app/ui/admin/feature/add_garage/components/add_garage_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddGarageDetailsScreen extends StatelessWidget {
  const AddGarageDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var garageNameController = TextEditingController();
    List<int> floors = [1, 2, 3, 4, 5];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Garage Details',
          style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
                fontSize: 20.sp,
              ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AddGarageItem(
                title: 'Garage Name',
                isRequired: true,
                controller: garageNameController,
              ),
              AddGarageItem(
                title: 'Number Of Floor',
                isRequired: true,
                controller: garageNameController,
                suffixIcon: IconlyBroken.arrowDown2,
                suffixPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => DropdownButton(
                        items: floors
                            .map((e) => DropdownMenuItem(child: Text('$e')))
                            .toList(),
                        onChanged: (value) {}),
                  );
                },
              ),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    print('object');
                  }
                },
                text: 'Next',
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
