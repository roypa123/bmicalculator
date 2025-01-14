import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/configs/constants/string_constants.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    on<SubmitEvent>(_submitHandler);
    on<ResetEvent>(_resetHandler);
  }

  String condition = "";
  bool display = false;

  Future<void> _submitHandler(
    SubmitEvent event,
    Emitter<MainState> emit,
  ) async {
    double weight = double.tryParse(event.weight) ?? 0.0;
    double height = double.tryParse(event.height) ?? 0.0;
    if (weight > 0 && height > 0) {
      double bmi = weight / (height * height);
      if (bmi > 29.9) {
        condition = Strings.obesity;
      } else if ((bmi >= 25) && (bmi <= 29.9)) {
        condition = Strings.overWeight;
      } else if ((bmi >= 18.5) && (bmi <= 24.9)) {
        condition = Strings.normalWeight;
      } else {
        condition = Strings.underWeight;
      }
      display = true;
      emit(SubmitState(bmi: bmi, condition: condition, display: display));
    }
  }

  Future<void> _resetHandler(
    ResetEvent event,
    Emitter<MainState> emit,
  ) async {
     condition = "";
     display = false;
     double bmi = 0;
    
    emit(SubmitState(bmi: bmi, condition: condition, display: display));
  }

}
