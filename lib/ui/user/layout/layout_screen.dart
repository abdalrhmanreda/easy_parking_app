import 'package:easy_parking_app/ui/user/cubit/app_cubit.dart';
import 'package:easy_parking_app/ui/user/cubit/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: AppCubit.get(context).currentIndex,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 20,
            onTap: (index) {
              AppCubit.get(context).changeNavBar(index);
            },
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle:
                Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 12),
            unselectedLabelStyle:
                Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 12),
            items: AppCubit.get(context).bottomNavigationBarItems(context),
          ),
          body:
              AppCubit.get(context).screens[AppCubit.get(context).currentIndex],
        );
      },
    );
  }
}
