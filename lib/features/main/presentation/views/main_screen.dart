import 'package:bmicalculator/core/extensions/context_extensions.dart';
import 'package:bmicalculator/features/main/presentation/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/common_app_bar.dart';
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
                    color: Colors.yellow,
                    width: 300.w,
                    height: 200.w,
                    child: Text("sdssds"),
                  ),
                  25.verticalSpace,
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.mainColor,
                      padding: EdgeInsets.symmetric(
                          horizontal: 32.w, vertical: 16.h),
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<MainBloc>().add(
                              SubmitEvent(
                                  weight: weightController.text.trim(),
                                  height: heightController.text.trim()),
                            );
                      }
                    },
                    child: const Text(
                      Strings.submit,
                      style: TextStyle(color: AppColors.white),
                    ),
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
