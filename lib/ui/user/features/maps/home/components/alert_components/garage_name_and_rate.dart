import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../../../generated/l10n.dart';

class GarageNameAndRate extends StatelessWidget {
  const GarageNameAndRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.of(context).parkName,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 16.sp,
              ),
        ),
        const Spacer(),
        const Row(
          children: [
            Text('4.5'),
            Icon(IconlyBroken.star, color: Colors.amber),
          ],
        ),
      ],
    );
  }
}
