import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.fontSize,
  });

  final VoidCallback onPressed;
  final String text;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: Theme.of(context).textButtonTheme.style,
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          color: const Color(
            AppColors.kPrimaryColor,
          ),
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
