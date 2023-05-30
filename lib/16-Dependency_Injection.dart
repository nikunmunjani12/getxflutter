// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// import '12-controller.dart';
//
// class Dependency16 extends StatefulWidget {
//   const Dependency16({Key? key}) : super(key: key);
//
//   @override
//   State<Dependency16> createState() => _Dependency16State();
// }
//
// class _Dependency16State extends State<Dependency16> {
//   // mycontroller contro =
//   //     Get.put(mycontroller(), tag: 'instancel', permanent: true); //11
//   @override
//   Widget build(BuildContext context) {
//     // Get.create<mycontroller>(() => mycontroller());               //33
//     //Get.lazyPut(() => mycontroller()); //22
//     Get.putAsync<mycontroller>(() async => await mycontroller());
//     return Scaffold(
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 //  Get.find<mycontroller>(tag: 'instancel');     //11
//                 Get.find<mycontroller>(); // 22
//                 Get.find<mycontroller>().incrimentcounter();
//               },
//               child: Text("enter"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class mycontroller extends GetxController {
//   void incrimentcounter() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     int counter = (prefs.getInt('counter') ?? 0) + 0;
//     print('pressed$counter times.');
//     await prefs.setInt('counter', counter);
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '12-controller.dart';

class Dependency16 extends StatefulWidget {
  const Dependency16({Key? key}) : super(key: key);

  @override
  State<Dependency16> createState() => _Dependency16State();
}

Future<void> initservice() async {
  print('starting sevesis..');
  await Get.putAsync(() async => await service());
  print('all services started..');
}

class _Dependency16State extends State<Dependency16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.find<service>().incrimentcounter();
              },
              child: Text("enter"),
            )
          ],
        ),
      ),
    );
  }
}

class service extends GetxService {
  Future<void> incrimentcounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('pressed$counter times.');
    await prefs.setInt('counter', counter);
  }
}
