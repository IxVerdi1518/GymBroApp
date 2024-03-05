import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundpool/soundpool.dart';

enum ExcersiceState{
  neutral,
  init,
  complete,
  incorrect
}

class ExcersiceCounter extends Cubit<ExcersiceState>{
  ExcersiceCounter() : super(ExcersiceState.neutral);
  int counter = 0;

  void setExcersiceState(ExcersiceState current){
    _soundC();
    emit(current);
  }

  void increment(){
    counter++;
    _soundC();
    emit(state);
    
  }

  void reset(){
    counter = 0;
    emit(state);
  }

  void incorrectt(){
    _soundC();
    emit(state);
  }
  
  Future<void> _soundC() async {
    Soundpool pool = Soundpool(streamType: StreamType.notification);

    int soundId = await rootBundle.load("assets/Message 2.wav").then((ByteData soundData) {
                  return pool.load(soundData);
                });
    int streamId = await pool.play(soundId);
  }

  
}