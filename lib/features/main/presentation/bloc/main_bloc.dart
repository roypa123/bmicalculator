import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    on<SubmitEvent>(_submitHandler);
  }

  String condition = "";
  bool display = false;

  Future<void> _submitHandler(
    SubmitEvent event,
    Emitter<MainState> emit,
  ) async {
    double weight = double.tryParse(event.weight) ?? 0.0;
    double height = double.tryParse(event.height) ?? 0.0;
    double bmi = weight / (height * height);
    if (bmi > 29.9) {
      condition = "Obesity";
    } else if ((bmi >= 25) && (bmi <= 29.9)) {
      condition = "Overweight";
    } else if ((bmi >= 18.5) && (bmi <= 24.9)) {
      condition = "Normal weight";
    } else {
      condition = "Underweight";
    }
    display = true;
    emit(SubmitState(bmi: bmi, condition: condition, display: display));
  }
}
