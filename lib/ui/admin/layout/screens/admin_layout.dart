import 'package:easy_parking_app/ui/admin/cubit/admin_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminLayout extends StatelessWidget {
  const AdminLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AdminCubit, AdminStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          body: AdminCubit.get(context)
              .screens[AdminCubit.get(context).currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              AdminCubit.get(context).changeIndex(index);
            },
            items: AdminCubit.get(context).bottomItems,
            currentIndex: AdminCubit.get(context).currentIndex,
          ),
        );
      },
    );
  }
}
