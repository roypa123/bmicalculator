part of 'main_bloc.dart';

abstract class MainState extends Equatable {
  const MainState();

  @override
  List<Object> get props => [];
}

class MainInitial extends MainState {}

class SubmitState extends MainState {
  const SubmitState(
      {required this.display, required this.condition, required this.bmi});
  final bool display;
  final String condition;
  final double bmi;

  @override
  List<Object> get props => [display, condition, bmi];
}
