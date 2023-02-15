import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
  class TimerController extends GetxController{
      Timer? _timer;
      int remainingSeconds=1;
      final time='00.00'.obs;

  @override
  void onReady(){
    super.onReady();
    _startTimer(5400);
  }
  
  @override
  void onClose(){
    super.onReady();
    if(_timer!=null){
      _timer!.cancel();
    }
  }

_startTimer(int seconds){
  
  const duration= Duration(seconds:1 );
  remainingSeconds=seconds;
  _timer=Timer.periodic(duration, (Timer timer) { 
    if(remainingSeconds==0){
      timer.cancel();
    }else{
      int hours=remainingSeconds~/3600;
      int minutes=remainingSeconds~/60;
      print('minutes of***=='+minutes.toString());
      int seconds=(remainingSeconds%60);
    print('seconds of&&&==='+seconds.toString());
      time.value=hours.toString().padLeft(2,"0")+":"+minutes.toString().padLeft(2,"0")+":"+seconds.toString().padLeft(2,"0");
      remainingSeconds--;
print('');
    }
  });
}


  }