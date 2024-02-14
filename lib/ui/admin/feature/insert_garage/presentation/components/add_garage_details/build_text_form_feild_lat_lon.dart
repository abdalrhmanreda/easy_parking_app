import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../../generated/l10n.dart';
import 'add_garage_item.dart';

class BuildTextFormFeildLatAndLon extends StatelessWidget {
  const BuildTextFormFeildLatAndLon({
    super.key,
    required this.latController,
    required this.lonController,
  });
  final TextEditingController latController;
  final TextEditingController lonController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AddTextFormFeildWithRichText(
            title: S.of(context).latitudesAdminInterFace,
            maxLine: 1,
            onTap: () async {
              GeoPoint? p = await showSimplePickerLocation(
                context: context,
                isDismissible: true,
                title: "Title dialog",
                textConfirmPicker: "pick",
                initPosition: GeoPoint(latitude: 10.7838, longitude: 106.6609),
              );
              if (p != null) {
                latController.text = p.latitude.toString();
                lonController.text = p.longitude.toString();
              }
            },
            height: 15.h,
            isRequired: true,
            controller: latController,
          ),
        ),
        Gap(15.w),
        Expanded(
          child: AddTextFormFeildWithRichText(
            title: S.of(context).longitudesAdminInterFace,
            maxLine: 1,
            height: 15.h,
            isRequired: true,
            controller: lonController,
          ),
        ),
      ],
    );
  }
}
