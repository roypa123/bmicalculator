import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/utils/helpers/device_functions.dart';
import 'core/utils/injection_container/injection_container.dart';

Future<void> initBmiCalculatorApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injectionContainer();
  await ScreenUtil.ensureScreenSize();
  lockDeviceRotation();
}