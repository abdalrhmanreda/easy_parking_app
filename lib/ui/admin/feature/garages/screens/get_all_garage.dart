import 'package:easy_parking_app/ui/admin/feature/garages/components/get_all_garage/get_all_garages_screen_body.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class GetAllGarageListScreen extends StatelessWidget {
  const GetAllGarageListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).garages),
      ),
      body: const GetAllGarageScreenBody(),
    );
  }
}
