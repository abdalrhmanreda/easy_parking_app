import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IconAndText extends StatelessWidget {
  final String text;
  final Widget icon;

  const IconAndText({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const Gap(5),
        Text(text),
      ],
    );
  }
}
