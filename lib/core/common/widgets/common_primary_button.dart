import 'package:bmicalculator/core/configs/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonPrimaryButton extends StatelessWidget {
  final VoidCallback function;
  final Color color;
  final String text;
  const CommonPrimaryButton(
      {super.key,
      required this.function,
      required this.color,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
      ),
      onPressed: function,
      child: Text(
        text,
        style: const TextStyle(color: AppColors.white),
      ),
    );
  }
}
