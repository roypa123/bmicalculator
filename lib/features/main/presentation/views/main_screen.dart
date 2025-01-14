import 'package:flutter/material.dart';

import '../../../../core/common/widgets/common_app_bar.dart';
import '../../../../core/configs/styles/app_colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "BMI CALCULATOR",leadingButton: true,trailingButton: true,), 
      backgroundColor: AppColors.backgroundColor,
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("hi")
          ],
        ),
      ),
    );
  }
}
