import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configs/styles/app_colors.dart';
import '../../utils/helpers/validators.dart';

class CommonTextForm extends StatelessWidget {
  final TextEditingController controller;

  const CommonTextForm({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller,
        keyboardType: TextInputType.number,
        validator: (value) {
          return Validators.validateNumber(value);
        },
        decoration: const InputDecoration(
          isDense: false,
          filled: true,
          fillColor: AppColors.white,
        ),
      ),
    );
  }
}
