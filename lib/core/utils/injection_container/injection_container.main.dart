part of 'injection_container.dart';

GetIt sl = GetIt.instance;

Future<void> injectionContainer() async {
  await _initSplashBloc();
  await _initMainBloc();
}

Future<void> _initSplashBloc() async {
  sl.registerFactory(
    () => SplashBloc(),
  );
}

Future<void> _initMainBloc() async {
  sl.registerFactory(
    () => MainBloc(),
  );
}