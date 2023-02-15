// import 'dart:async';

// import 'package:flutter/material.dart';

// class CountdownPage extends StatefulWidget {
//   const CountdownPage({super.key});

//   @override
//   State<CountdownPage> createState() => _CountdownPageState();
// }

// class _CountdownPageState extends State<CountdownPage> {
//   Duration duration = Duration();
//   Timer? timer;
//   @override
//   void initState() {
//     super.initState();
//     startTimer();
//   }

//   void addTime() {
//     final addSeconds = 1;
//     setState(() {
//       final seconds = duration.inSeconds + addSeconds;
//       duration = Duration(seconds: seconds);
//     });
//   }

//   void startTimer() {
//     timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
//   }

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         backgroundColor: Colors.black,
//         body: Center(
//           child: buildTime(),
//         ),
//       );

//   Widget buildTime() {
// //below code 9---> 09 shows
//     String twoDigits(int n) => n.toString().padLeft(2, '0');
//     final hours=twoDigits(duration.inHours);
//     final minutes = twoDigits(duration.inMinutes.remainder(60));
//     final seconds = twoDigits(duration.inSeconds.remainder(60));
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         buildTimeCard(time: hours, header: 'HOURS'),
//         const SizedBox(
//           width: 8,
//         ),
//         buildTimeCard(time: minutes, header: 'MINUTES'),
//         const SizedBox(
//           width: 8,
//         ),
//         buildTimeCard(time: seconds, header: 'SECONDS'),
//       ],
//     );
//   }

//   Widget buildTimeCard({required String time, required String header}) =>
//       Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             padding: EdgeInsets.all(8.0),
//             decoration: BoxDecoration(
//                 color: Colors.white, borderRadius: BorderRadius.circular(10)),
//             child: Text(
//               time,
//               style: TextStyle(
//                   fontWeight: FontWeight.bold, color: Colors.black, fontSize: 17),
//             ),
//           ),
//         const  SizedBox(height: 24,),
//         Text(header,style: TextStyle(color: Colors.white),)
//         ],
//       );
// }



//***Working code */
import 'dart:async';

import 'package:flutter/material.dart';

class CountdownPage extends StatefulWidget {
  const CountdownPage({super.key});

  @override
  State<CountdownPage> createState() => _CountdownPageState();
}

class _CountdownPageState extends State<CountdownPage> {
Duration duration=Duration(seconds: 5400);
Timer? timer;
bool isbuttonpressed=false;
@override
void initState(){
  super.initState();
  startTimer();
}
void addTime(){
  final addSeconds=1;
  setState(() {
    final seconds=duration.inSeconds-addSeconds;
    duration =Duration(seconds: seconds);
  });
}

void startTimer(){
  
  timer=Timer.periodic(Duration(seconds: 1),(Timer t)=>addTime() );
 
}

void restartTimer(){
   if(isbuttonpressed==true){
   duration=Duration(seconds: 5400);
  }
}
  @override
  Widget build(BuildContext context)=> Scaffold(
      body: Center(
        child: buildTime(),
      ),
    );

    Widget buildTime(){
//below code 9---> 09 shows
      String twoDigits(int n)=>n.toString().padLeft(2,'0');
      final hours=twoDigits(duration.inHours);
      final minutes=twoDigits(duration.inMinutes.remainder(60));
      final seconds=twoDigits(duration.inSeconds.remainder(60));
      return Column(
        children: [
          Text('$hours:$minutes:$seconds',style: TextStyle(fontSize: 80),),
          ElevatedButton(onPressed: (() {
            isbuttonpressed=true;
            restartTimer();
          }), 
          child:const Text('Reset'))
        ],
      );
    }
  
}





// import 'dart:async';
// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//   class TimerController extends GetxController{
//       Timer? _timer;
//       int remainingSeconds=1;
//       final time='00.00'.obs;

//   @override
//   void onReady(){
//     super.onReady();
//     _startTimer(5400);
//   }
  
//   @override
//   void onClose(){
//     super.onReady();
//     if(_timer!=null){
//       _timer!.cancel();
//     }
//   }

// _startTimer(int seconds){
  
//   const duration= Duration(seconds:1 );
//   remainingSeconds=seconds;
//   _timer=Timer.periodic(duration, (Timer timer) { 
//     if(remainingSeconds==0){
//       timer.cancel();
//     }else{
//       int hours=remainingSeconds~/3600;
//       int minutes=remainingSeconds~/60;
//       print('minutes of***=='+minutes.toString());
//       int seconds=(remainingSeconds%60);
//     print('seconds of&&&==='+seconds.toString());
//       time.value=hours.toString().padLeft(2,"0")+":"+minutes.toString().padLeft(2,"0")+":"+seconds.toString().padLeft(2,"0");
//       remainingSeconds--;
// print('');
//     }
//   });
// }


//   }