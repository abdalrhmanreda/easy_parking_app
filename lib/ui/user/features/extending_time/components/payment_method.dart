import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:easy_parking_app/core/user/constant/app_constant.dart';
import 'package:easy_parking_app/ui/user/features/extending_time/models/payment_method_model.dart';
import 'package:easy_parking_app/ui/user/features/ticket/controllers/extend_time_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int value = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppConstant.deviceHeight(context) / 3,
      child: ListView(
        children: ExtendTimeCubit.get(context)
            .paymentMethods(context)
            .asMap()
            .entries
            .map((e) => containerList(
                ExtendTimeCubit.get(context).paymentMethods(context)[e.key]))
            .toList(),
      ),
    );
  }

  Widget containerList(PaymentMethodModel methodModel) => Container(
        margin: EdgeInsets.symmetric(vertical: 8.h),
        decoration: BoxDecoration(
          color: const Color(AppColors.kLoginWithGoogleColor),
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    methodModel.icon,
                    Gap(15.h),
                    Text(
                      methodModel.text,
                    ),
                  ],
                ),
              ),
              Radio(
                fillColor: MaterialStateColor.resolveWith(
                    (states) => const Color(AppColors.kPrimaryColor)),
                value: methodModel.value,
                groupValue: value,
                onChanged: (newValue) {
                  setState(() {
                    value = newValue!; // Update the class field 'value'
                    print(value);
                  });
                },
                activeColor: const Color(AppColors.kPrimaryColor),
              ),
            ],
          ),
        ),
      );
}
