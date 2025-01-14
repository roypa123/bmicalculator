import 'package:bmicalculator/core/configs/styles/app_colors.dart';
import 'package:bmicalculator/core/utils/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool? leadingButton;
  final bool? trailingButton;

  const CommonAppBar(
      {super.key, this.title, this.leadingButton, this.trailingButton});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.transparent,
      centerTitle: true,
      title: Text(title ?? "",
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: AppColors.mainColor)),
      leading: (leadingButton ?? true)
          ? GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios,
                color: AppColors.mainColor,
              ),
            )
          : null,
      actions: [
        if (trailingButton ?? false)
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RouteConstants.routeInfo);
            },
            child: const Icon(Icons.info),
          ),
        20.horizontalSpace,
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(75.h);
}
