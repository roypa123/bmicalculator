import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
   SplashBloc() : super(SplashInitial()) {
    on<StartSplash>(_onStartSplash);
  }

   Future<void> _onStartSplash(StartSplash event, Emitter<SplashState> emit) async {
    await Future.delayed(const Duration(seconds: 5));
    emit(SplashNavigate());
  }
}