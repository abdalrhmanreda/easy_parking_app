import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:easy_parking_app/core/user/methods/get_responsive_text/responsive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../core/user/components/custom_button.dart';
import '../../../../../../core/user/components/progress_indector.dart';
import '../../../../../../core/user/constant/app_constant.dart';
import '../../../../../../generated/l10n.dart';
import '../../controller/auth_cubit.dart';
import '../common/build_text_next_to_text_button.dart';
import '../common/build_two_text_form_field.dart';
import '../common/sign_with_google.dart';
import 'full_name.dart';

class RegisterScreenBody extends StatelessWidget {
  RegisterScreenBody({super.key});

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Center(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: AppConstant.deviceHeight(context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        S.of(context).signUpScreenTitle,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: getResponsiveFontSize(context,
                                  fontSize: 30.sp),
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Gap(10.h),
                      Text(
                        'Fill your details or continue with\nsocial media',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.grey,
                              fontSize: getResponsiveFontSize(context,
                                  fontSize: 16.sp),
                            ),
                        textAlign: TextAlign.center,
                      ),
                      Gap(25.h),
                      TitleAndTextFormFeild(
                        nameController: nameController,
                        title: S.of(context).registerScreenUserName,
                        hint: 'xxxxxxxxx',
                      ),
                      Gap(20.h),
                      TitleAndTextFormFeild(
                        nameController: phoneController,
                        title: 'Phone',
                        hint: '+20100000000',
                      ),
                      Gap(20.h),
                      CustomTwoTextFromField(
                        controller1: emailController,
                        controller2: passController,
                        hint1: S.of(context).loginScreenEmailAddress,
                        hint2: S.of(context).loginScreenForgetPassword,
                      ),
                      const Gap(30),
                      ConditionalBuilder(
                        condition: state is! LoadingState,
                        builder: (context) => CustomButton(
                          onPressed: () {},
                          text: 'Sign Up',
                          height: 37.h,
                          color: AppColors.kPrimaryColor,
                          width: AppConstant.deviceWidth(context),
                          horizontal: 0,
                          vertical: 0,
                          radius: 10.r,
                          textColor: AppColors.kWhiteColor,
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 18.sp),
                        ),
                        fallback: (context) => const CustomLoadingIndicator(),
                      ),
                      Gap(18.h),
                      const SignWithGoogle(text: "Sign up with Google "),
                      Gap(8.h),
                      customTextNextToTextButton(
                          context: context,
                          text: S.of(context).registerScreenHaveAccount,
                          textButton: 'Sign In',
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
