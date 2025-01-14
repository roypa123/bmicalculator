part of 'main_bloc.dart';

abstract class MainEvent extends Equatable {
  const MainEvent();
}

class SubmitEvent extends MainEvent {
  const SubmitEvent({
    required this.weight,
    required this.height,
  });

  final String weight;
  final String height;

  @override
  List<String> get props => [weight, height];
}

class ResetEvent extends MainEvent {
  const ResetEvent();

  @override
  List<String> get props => [];
}
