// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class DhowDiolog extends StatefulWidget {
//   const DhowDiolog({Key? key}) : super(key: key);
//
//   @override
//   State<DhowDiolog> createState() => _DhowDiologState();
// }
//
// class _DhowDiologState extends State<DhowDiolog> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Get.defaultDialog(
//                     title: "Dialog title",
//                     titleStyle: TextStyle(fontSize: 25),
//                     middleTextStyle: TextStyle(fontSize: 22),
//                     backgroundColor: Colors.blue.shade100,
//                     radius: 80,
//                     content: Row(
//                       children: [
//                         CircularProgressIndicator(),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Text("Data Dialog")
//                       ],
//                     ),
//                     textCancel: "cancel",
//                     cancelTextColor: Colors.white,
//                     confirmTextColor: Colors.white,
//                     onCancel: () {},
//                     onConfirm: () {},
//                     buttonColor: Colors.green.shade100,
//                     cancel: Text(
//                       "cancels",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     confirm: Text(
//                       "confirms",
//                       style: TextStyle(color: Colors.white),
//                     ));
//               },
//               child: Text("show dialog"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DhowDiolog extends StatefulWidget {
  const DhowDiolog({Key? key}) : super(key: key);

  @override
  State<DhowDiolog> createState() => _DhowDiologState();
}

class _DhowDiologState extends State<DhowDiolog> {
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
                Get.defaultDialog(
                  title: "hello",
                  content: Row(
                    children: [
                      CircularProgressIndicator(),
                      ElevatedButton(onPressed: () {}, child: Text("enter"))
                    ],
                  ),
                );
              },
              child: Text(""),
            ),
          ],
        ),
      ),
    );
  }
}
