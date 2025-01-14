import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/common_app_bar.dart';
import '../../../../core/configs/constants/string_constants.dart';
import '../../../../core/configs/styles/app_colors.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar:  const CommonAppBar(
        title: Strings.bmiBodyMassIndex,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        width: double.maxFinite,
        height: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                Strings.paragraph1,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14.sp),
              ),
              25.verticalSpace,
              Text(
                Strings.equation,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              25.verticalSpace,

              
              Text(
                Strings.bmiCategories,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              25.verticalSpace,
              Text(
                Strings.bmiCategoriesP,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14.sp),
              ),
              25.verticalSpace,
              Text(
                Strings.usesOfBmi,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              25.verticalSpace,
              Text(
                Strings.usesOfBmiP,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14.sp),
              ),
              25.verticalSpace,
              Text(
                Strings.limitationsOfBmi,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              25.verticalSpace,
              Text(
                Strings.limitationsOfBmiP,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
