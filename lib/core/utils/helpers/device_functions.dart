import 'package:flutter/services.dart';

lockDeviceRotation() => SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);