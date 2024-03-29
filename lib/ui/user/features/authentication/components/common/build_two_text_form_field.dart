import 'package:easy_parking_app/core/user/methods/get_responsive_text/responsive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../../generated/l10n.dart';
import '../../controller/auth_cubit.dart';
import 'container_with_text_from_feild.dart';

class CustomTwoTextFromField extends StatefulWidget {
  const CustomTwoTextFromField({
    super.key,
    required this.controller1,
    required this.controller2,
    required this.hint1,
    required this.hint2,
  });

  final TextEditingController controller1;
  final TextEditingController controller2;
  final String hint1;
  final String hint2;

  @override
  State<CustomTwoTextFromField> createState() => _CustomTwoTextFromFieldState();
}

class _CustomTwoTextFromFieldState extends State<CustomTwoTextFromField> {
  bool isPass = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).loginScreenEmailAddress,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: getResponsiveFontSize(context, fontSize: 15.sp)),
            ),
            const Gap(10),
            ContainerTextFormFeild(
              isPass: false,
              controller: widget.controller1,
              hint: widget.hint1,
              keyboardType: TextInputType.emailAddress,
            ),
            const Gap(20),
            Text(
              S.of(context).loginScreenPassword,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: getResponsiveFontSize(context, fontSize: 15.sp)),
            ),
            const Gap(10),
            ContainerTextFormFeild(
              isPass: isPass,
              controller: widget.controller2,
              hint: widget.hint2,
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: isPass ? Iconsax.eye : Iconsax.eye_slash,
              suffixPressed: () {
                setState(() {
                  isPass = !isPass;
                });
                // AuthCubit.get(context).changePasswordIcon(isPass2);
              },
            ),
          ],
        );
      },
    );
  }
}
