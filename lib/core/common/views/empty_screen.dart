import 'package:flutter/material.dart';

import '../../configs/styles/app_colors.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Text(
          'NO ROUTE FOUND !',
        ),
      ),
    );
  }
}
