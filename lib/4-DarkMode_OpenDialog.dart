// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class OpenDialog4 extends StatefulWidget {
//   const OpenDialog4({Key? key}) : super(key: key);
//
//   @override
//   State<OpenDialog4> createState() => _OpenDialog4State();
// }
//
// class _OpenDialog4State extends State<OpenDialog4> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Get.bottomSheet(
//                   Container(
//                     child: Wrap(
//                       children: [
//                         ListTile(
//                           leading: Icon(Icons.wb_sunny_outlined),
//                           title: Text("Light theme"),
//                           onTap: () => {Get.changeTheme(ThemeData.light())},
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.wb_sunny),
//                           title: Text("Dark theme"),
//                           onTap: () => {Get.changeTheme(ThemeData.dark())},
//                         ),
//                       ],
//                     ),
//                   ),
//                   barrierColor: Colors.amber.shade100,
//                   isDismissible: true,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 );
//               },
//               child: Text("Bottom Sheet"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OpenDialog4 extends StatefulWidget {
  const OpenDialog4({Key? key}) : super(key: key);

  @override
  State<OpenDialog4> createState() => _OpenDialog4State();
}

class _OpenDialog4State extends State<OpenDialog4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.bottomSheet(Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text("lihjt mode"),
                    leading: Icon(Icons.add),
                    onTap: () => {Get.changeTheme(ThemeData.light())},
                  ),
                  ListTile(
                    title: Text("lihjt mode"),
                    leading: Icon(Icons.add),
                    onTap: () => {Get.changeTheme(ThemeData.dark())},
                  )
                ],
              ),
            ));
          },
          child: Text("enter"),
        ),
      ),
    );
  }
}
