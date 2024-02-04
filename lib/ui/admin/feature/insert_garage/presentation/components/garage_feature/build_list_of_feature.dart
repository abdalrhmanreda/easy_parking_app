import 'package:flutter/material.dart';

import '../../../../../../../config/colors/app_colors.dart';

class ListOfFeature extends StatefulWidget {
  const ListOfFeature({super.key});

  @override
  _ListOfFeatureState createState() => _ListOfFeatureState();
}

class _ListOfFeatureState extends State<ListOfFeature> {
  Map<String, bool> features = {
    "Dose garage contain support ?": false,
    "Dose garage contain washingCar ?": false,
    "Dose garage contain securityCamara ?": false,
    "Dose garage contain emergencyExit ?": false,
    "Dose garage contain carLifts ?": false,
  };
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var entry in features.entries)
          CheckboxListTile(
            activeColor: const Color(AppColors.kPrimaryColor),
            title: Text(entry.key),
            value: entry.value,
            onChanged: (newValue) {
              setState(() {
                features[entry.key] = newValue!;
              });
            },
          ),
      ],
    );
  }
}
