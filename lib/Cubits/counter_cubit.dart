import 'package:basketball_counter_app/Cubits/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterBIncrementalState());
  // In cubit it management function -> cubit -> update state (UI);
  // Create Team Counter function
  int teamAPoints = 0;
  int teamBPoints = 0;

  void incrementPoints({required String teamName, required int buttonIndex}) {
    if (teamName == 'A') {
      teamAPoints += buttonIndex;
      emit(CounterAIncrementalState());
    } else {
      teamBPoints += buttonIndex;
      emit(CounterBIncrementalState());
    }
  }
}
