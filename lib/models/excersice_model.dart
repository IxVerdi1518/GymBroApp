import 'package:flutter_bloc/flutter_bloc.dart';

enum ExcersiceState{
  neutral,
  init,
  complete
}

class ExcersiceCounter extends Cubit<ExcersiceState>{
  ExcersiceCounter() : super(ExcersiceState.neutral);
  int counter = 0;

  void setExcersiceState(ExcersiceState current){
    emit(current);
  }

  void increment(){
    counter++;
    emit(state);
  }

  void reset(){
    counter = 0;
    emit(state);
  }
}