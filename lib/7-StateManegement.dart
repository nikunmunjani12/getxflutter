// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class Statemanegement7 extends StatefulWidget {
//   const Statemanegement7({Key? key}) : super(key: key);
//
//   @override
//   State<Statemanegement7> createState() => _Statemanegement7State();
// }
//
// class _Statemanegement7State extends State<Statemanegement7> {
//   var count = 0.obs;
//   void incriment() {
//     count++;
//   }
//
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
//                 "Count value is $count",
//                 style: TextStyle(fontSize: 25),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 incriment();
//               },
//               child: Text("Increment"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Statemanegement7 extends StatefulWidget {
  const Statemanegement7({Key? key}) : super(key: key);

  @override
  State<Statemanegement7> createState() => _Statemanegement7State();
}

class _Statemanegement7State extends State<Statemanegement7> {
  var count = 0.obs;
  void incriment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text('${count}'),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    incriment();
                  });
                },
                child: Text(''))
          ],
        ),
      ),
    );
  }
}
