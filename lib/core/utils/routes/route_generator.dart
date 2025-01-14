part of 'router.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class RouteGenerator {
  static Route generateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case RouteConstants.routeInitial:
        return _buildRoute(
            RouteConstants.routeInitial,
            BlocProvider<SplashBloc>(
              create: (_) => sl<SplashBloc>()..add(StartSplash()),
              child: const SplashScreen(),
            ));

      case RouteConstants.routeMainScreen:
        return _buildRoute(
            RouteConstants.routeMainScreen,
            BlocProvider<MainBloc>(
              create: (_) => sl<MainBloc>(),
              child: const MainScreen(),
            ));

      case RouteConstants.routeInfo:
        return _buildRoute(
            RouteConstants.routeInfo,
            const InfoScreen());

      default:
        return _buildRoute(RouteConstants.routeEmpty, const EmptyScreen());
    }
  }
}

Route _buildRoute(String route, Widget widget,
    {bool enableFullScreen = false}) {
  return CupertinoPageRoute(
      fullscreenDialog: enableFullScreen,
      settings: RouteSettings(name: route),
      builder: (_) => widget);
}