import 'dart:async';
import 'package:mobx/mobx.dart';
import 'package:timer/timerModel.dart';
import 'timerModel.dart';

class TimerVM extends TimerModel {

  void minute() {

    flowinData.add(min);
    min++;
    if (min == 99) {
      min = 0;
    }
  }

  void countdown() {
    counter++;
    if (counter%2 != 0) {
      Status = "Pause";
      
      timer = Timer.periodic(Duration(seconds: 1), (_) {
      flowinData.add(sec);
      sec++;
      if (sec == 60) {
        minute();
        sec = 0;
      }
    }); 
    }
    else{
      Status = "Start";
      pausecountdown();
    }
    
  }

  void pausecountdown(){
    timer!.cancel();
  }


  
}
