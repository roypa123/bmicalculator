import 'package:flutter/material.dart';
import 'bmi_calculator_app.dart';
import 'init_bmi_calculator_app.dart';


Future<void> main() async {
  await initBmiCalculatorApp();
  runApp(const BmiCalculatorApp());
}