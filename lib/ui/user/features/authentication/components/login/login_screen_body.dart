import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:easy_parking_app/core/user/methods/get_responsive_text/responsive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../config/routes/routes_path.dart';
import '../../../../../../core/user/components/custom_button.dart';
import '../../../../../../core/user/components/custom_navigatation.dart';
import '../../../../../../core/user/components/progress_indector.dart';
import '../../../../../../core/user/constant/app_constant.dart';
import '../../../../../../generated/l10n.dart';
import '../../controller/auth_cubit.dart';
import '../common/build_text_next_to_text_button.dart';
import '../common/build_two_text_form_field.dart';
import '../common/sign_with_google.dart';

class LoginScreenBody extends StatelessWidget {
  LoginScreenBody({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passController = TextEditingController();
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
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
                        S.of(context).signInScreenTitle,
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
                                  fontSize: 15.sp),
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const Gap(30),
                      CustomTwoTextFromField(
                        controller1: emailController,
                        controller2: passController,
                        hint1: S.of(context).loginScreenEmailAddress,
                        hint2: S.of(context).loginScreenForgetPassword,
                      ),
                      const Gap(15),
                      InkWell(
                        onTap: () {
                          CustomNavigation.navigateByNamedTo(
                              context, RoutePath.forgetPass);
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            S.of(context).loginScreenForgetPassword,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: const Color(AppColors.kGreyColor),
                                      fontSize: getResponsiveFontSize(context,
                                          fontSize: 14.sp),
                                    ),
                          ),
                        ),
                      ),
                      const Gap(20),
                      ConditionalBuilder(
                          condition: state is! LoadingState,
                          builder: (context) => CustomButton(
                                onPressed: () {},
                                text: S.of(context).loginScreenButton,
                                height: 35.h,
                                color: AppColors.kPrimaryColor,
                                width: AppConstant.deviceWidth(context),
                                horizontal: 0,
                                vertical: 0,
                                radius: 10,
                                textColor: AppColors.kWhiteColor,
                                fontSize: getResponsiveFontSize(context,
                                    fontSize: 18.sp),
                              ),
                          fallback: (context) =>
                              const CustomLoadingIndicator()),
                      const Gap(25),
                      const SignWithGoogle(text: 'sign in with google'),
                      const Gap(20),
                      customTextNextToTextButton(
                        context: context,
                        text: S.of(context).registerScreenHaveAccount,
                        textButton: S.of(context).createAccountButton,
                        onPressed: () {
                          CustomNavigation.navigateByNamedTo(
                              context, RoutePath.register);
                        },
                      ),
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
