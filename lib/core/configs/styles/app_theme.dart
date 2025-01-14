import 'package:flutter/material.dart';


class AppTheme {
  static ThemeData get themeData => ThemeData(
      scaffoldBackgroundColor: Colors.black,
      highlightColor: Colors.white.withOpacity(.03),
      splashColor: Colors.white.withOpacity(.06),
  
      useMaterial3: true,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: ZoomPageTransitionsBuilder(
            allowEnterRouteSnapshotting: false,
          ),
          TargetPlatform.iOS: ZoomPageTransitionsBuilder(
            allowEnterRouteSnapshotting: false,
          ),
        },
      ),
      brightness: Brightness.light,
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: Colors.black));

  static Color get barrierColor => Colors.black.withOpacity(.50);
}
