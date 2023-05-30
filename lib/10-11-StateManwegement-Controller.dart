// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class Statemanegement10 extends StatefulWidget {
//   const Statemanegement10({Key? key}) : super(key: key);
//
//   @override
//   State<Statemanegement10> createState() => _Statemanegement10State();
// }
//
// class _Statemanegement10State extends State<Statemanegement10> {
//   mycontroller mycontro = Get.put(mycontroller());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GetX<mycontroller>(
//               init: mycontroller(),
//               builder: (DisposableInterface controller) {
//                 return Text(
//                   "Tha value is ${mycontro.count}",
//                   style: TextStyle(fontSize: 25),
//                 );
//               },
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Get.find<mycontroller>().incriment();
//               },
//               child: Text("Incriment"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class mycontroller extends GetxController {
//   var count = 0.obs;
//   void incriment() {
//     count++;
//     update();
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Statemanegement10 extends StatefulWidget {
  const Statemanegement10({Key? key}) : super(key: key);

  @override
  State<Statemanegement10> createState() => _Statemanegement10State();
}

class _Statemanegement10State extends State<Statemanegement10> {
  controller1 contro = Get.put(controller1());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<controller1>(
              init: controller1(),
              builder: (controller) {
                return Text('${contro.counter}');
              },
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<controller1>().inncriment();
              },
              child: Text(''),
            )
          ],
        ),
      ),
    );
  }
}

class controller1 extends GetxController {
  var counter = 0.obs;
  void inncriment() {
    counter++;
    update();
  }
}
