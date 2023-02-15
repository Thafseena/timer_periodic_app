import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timer_periodic_app/timer_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   // Get.put(TimerController());
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:  CountdownPage(),
    );
  }
}

// class MyHomePage extends GetView<TimerController>{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           height: 100,
//           width: 200,
//           decoration: ShapeDecoration(
//             color: Theme.of(context).primaryColor,
//             shape: StadiumBorder(
//               side: BorderSide(
//                 width: 2,
//                 color: Colors.red,
//               )
//             )),
//             child: Obx(() => Center(child: Text('${controller.time.value}'))),
//         ),
//       ),
//     );
//   }

// }
