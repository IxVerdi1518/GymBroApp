import 'package:flutter_bloc/flutter_bloc.dart';

enum CurlState{
  neutral,
  init,
  complete
}

class CurlCounter extends Cubit<CurlState>{
  CurlCounter() : super(CurlState.neutral);
  int counter = 0;

  void setPushUpState(CurlState current){
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