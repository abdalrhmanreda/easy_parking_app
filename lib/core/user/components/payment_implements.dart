import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_paymob/flutter_paymob.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import '../../../config/colors/app_colors.dart';
import '../../../generated/assets.dart';
import '../../../generated/l10n.dart';
import 'custom_button.dart';

class PaymentMethodImplement extends StatelessWidget {
  const PaymentMethodImplement({
    super.key,
    required this.value,
    required this.phoneController,
  });

  final int value;
  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {
        if (value == 1) {
          QuickAlert.show(
            context: context,
            type: QuickAlertType.custom,
            onConfirmBtnTap: () {
              FlutterPaymob.instance.payWithWallet(
                  context: context,
                  currency: "EGP",
                  amount: 100, // EGP
                  number: phoneController.text, // wallet number
                  onPayment: (response) {
                    response.success == true
                        ? ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(response.message ?? "Successes"),
                            ),
                          )
                        : null;
                  });
            },
            customAsset: Assets.iconsPhoneNumber,
            widget: TextFormField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                hintText: S.of(context).enterYourPhone,
              ),
            ),
          );
        } else if (value == 2) {
          FlutterPaymob.instance.payWithCard(
              context: context,
              currency: "EGP",
              amount: 100, // EGP
              // optional
              onPayment: (response) {
                response.success == true
                    ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(response.message ?? "Successes")))
                    : null;
              });
        }
      },
      text: S.of(context).pay,
      height: 42.h,
      width: MediaQuery.of(context).size.width,
      vertical: 15.h,
      horizontal: 0,
      radius: 10,
      color: AppColors.kPrimaryColor,
      textColor: AppColors.kWhiteColor,
      fontSize: 14.sp,
    );
  }
}
