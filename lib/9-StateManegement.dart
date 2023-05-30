// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '9-1-NameState.dart';
//
// class Statemanegement9 extends StatefulWidget {
//   const Statemanegement9({Key? key}) : super(key: key);
//
//   @override
//   State<Statemanegement9> createState() => _Statemanegement9State();
// }
//
// class _Statemanegement9State extends State<Statemanegement9> {
//   mycontroller mycontro = Get.put(mycontroller());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Obx(
//               () => Text(
//                 "Name is ${mycontro.Std.name.value}",
//                 style: TextStyle(fontSize: 25),
//               ),
//             ),
//             Obx(
//               () => Text(
//                 "Name is ${mycontro.Std1.value.name1}",
//                 style: TextStyle(fontSize: 25),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 mycontro.convertoUppercase();
//               },
//               child: Text("Upper"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 mycontro.convertoUppercase1();
//               },
//               child: Text("Upper"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class mycontroller extends GetxController {
//   var Std = student();
//   void convertoUppercase() {
//     Std.name.value = Std.name.value.toUpperCase();
//   }
//
//   final Std1 = student(name1: "nikunj", age1: 25).obs;
//   void convertoUppercase1() {
//     Std1.update((Std1) {
//       Std1?.name1 = Std1.name1.toString().toUpperCase();
//     });
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '8-Statemanegemennt-name.dart';

class Statemanegement9 extends StatefulWidget {
  const Statemanegement9({Key? key}) : super(key: key);

  @override
  State<Statemanegement9> createState() => _Statemanegement9State();
}

class _Statemanegement9State extends State<Statemanegement9> {
  mycontroller contor = Get.put(mycontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Text('${contor.Std.name.value}')),
          ElevatedButton(
              onPressed: () {
                contor.convertouppertocase();
              },
              child: Text('')),
          Obx(() => Text('${contor.Std1.value.name}')),
          ElevatedButton(
              onPressed: () {
                contor.convertouppercase2();
              },
              child: Text(''))
        ],
      ),
    );
  }
}

class mycontroller extends GetxController {
  var Std = student();
  void convertouppertocase() {
    Std.name.value = Std.name.value.toUpperCase();
  }

  var Std1 = student(name1: 'nikunj', age1: 15).obs;
  void convertouppercase2() {
    Std1.update((Std1) {
      Std1?.name1 = Std1.name1.toString().toUpperCase();
    });
  }
}
