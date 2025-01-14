import 'package:bmicalculator/core/extensions/context_extensions.dart';
import 'package:bmicalculator/features/main/presentation/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/common_app_bar.dart';
import '../../../../core/common/widgets/common_primary_button.dart';
import '../../../../core/common/widgets/common_text_form.dart';
import '../../../../core/configs/constants/string_constants.dart';
import '../../../../core/configs/styles/app_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final formKey = GlobalKey<FormState>();
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    weightController.dispose();
    heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.dismissKeyboard(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: const CommonAppBar(
          title: Strings.bmiCalculator,
          leadingButton: false,
          trailingButton: true,
        ),
        backgroundColor: AppColors.backgroundColor,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          width: double.maxFinite,
          height: double.maxFinite,
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  25.verticalSpace,
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text(Strings.enterWeight)),
                  2.verticalSpace,
                  CommonTextForm(
                    controller: weightController,
                  ),
                  25.verticalSpace,
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text(Strings.enterHeight)),
                  2.verticalSpace,
                  CommonTextForm(
                    controller: heightController,
                  ),
                  25.verticalSpace,
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.w),
                    width: 300.w,
                    height: 150.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 0.1,
                          blurRadius: 0.1,
                          offset: const Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(Strings.yourBmiIs,style: TextStyle(fontSize: 15.sp),),
                        Text(Strings.number1,style: TextStyle(fontSize: 35.sp),),
                        Text(Strings.obese,style: TextStyle(fontSize: 20.sp))
                      ],
                    ),
                  ),
                  25.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonPrimaryButton(
                        color: AppColors.red,
                        text: Strings.reset,
                        function: () {},
                      ),
                      25.horizontalSpace,
                      CommonPrimaryButton(
                        color: AppColors.mainColor,
                        text: Strings.submit,
                        function: () {
                          if (formKey.currentState!.validate()) {
                            context.read<MainBloc>().add(
                                  SubmitEvent(
                                      weight: weightController.text.trim(),
                                      height: heightController.text.trim()),
                                );
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
