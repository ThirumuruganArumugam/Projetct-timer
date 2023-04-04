import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
part 'timerModel.g.dart'; 

class TimerModel = _TimerModelBase with _$TimerModel;

abstract class _TimerModelBase with Store {
  

  StreamController flowinData = StreamController.broadcast();
 
  Timer? timer;
  Timer? minutes;
  
  @observable
  int sec = 0;
  @observable
  int min = 0;
  
  @observable
  // ignore: non_constant_identifier_names
  String Status = "Start";
  @observable
  int counter = 0;

}

