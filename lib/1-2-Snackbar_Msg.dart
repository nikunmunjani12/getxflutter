// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class GetxFlutter extends StatefulWidget {
//   const GetxFlutter({Key? key}) : super(key: key);
//
//   @override
//   State<GetxFlutter> createState() => _GetxFlutterState();
// }
//
// class _GetxFlutterState extends State<GetxFlutter> {
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
//                 setState(() {
//                   Get.snackbar(
//                     "Snackbar title", "This will be snackbar massege",
//                     //snackPosition: SnackPosition.BOTTOM,
//                     dismissDirection: DismissDirection.horizontal,
//                   );
//                 });
//               },
//               child: Text("show snackbar"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxFlutter extends StatefulWidget {
  const GetxFlutter({Key? key}) : super(key: key);

  @override
  State<GetxFlutter> createState() => _GetxFlutterState();
}

class _GetxFlutterState extends State<GetxFlutter> {
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
                Get.snackbar('nikunj', 'not vailabale');
              },
              child: Text("Enter"),
            )
          ],
        ),
      ),
    );
  }
}
