import 'package:easy_parking_app/ui/admin/feature/insert_garage/components/add_garage_details/add_garage_details_body.dart';
import 'package:flutter/material.dart';

import '../../../../../core/admin/components/build_app_bar.dart';
import '../../../../../generated/l10n.dart';

class AddGarageDetailsScreen extends StatelessWidget {
  const AddGarageDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context: context,
        title: S.of(context).garageDetailsTitleAdminInterFace,
      ),
      body: const AddGarageDetailsScreenBody(),
    );
  }
}
