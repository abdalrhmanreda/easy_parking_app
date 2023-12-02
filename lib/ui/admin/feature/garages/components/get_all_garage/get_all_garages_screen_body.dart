import 'package:easy_parking_app/ui/admin/feature/garages/controller/garage_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'garage_item.dart';

class GetAllGarageScreenBody extends StatelessWidget {
  const GetAllGarageScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GarageCubit, GarageStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return ListView.separated(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(5),
          itemBuilder: (context, index) => buildGarageItem(context),
          separatorBuilder: (context, index) => const Gap(20),
          itemCount: 10,
        );
      },
    );
  }
}
