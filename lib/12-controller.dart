import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller12 extends StatefulWidget {
  const Controller12({Key? key}) : super(key: key);

  @override
  State<Controller12> createState() => _Controller12State();
}

class _Controller12State extends State<Controller12> {
  mycontroller mycontro = Get.put(mycontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // GetBuilder<mycontroller>(
            //   initState: (state) => mycontro.incriment(),
            //   dispose: (_) => mycontro.cleanUpTask(),
            //   builder: (controller) {
            //     return Text(
            //       "Tha value is ${mycontro.count}",
            //       style: TextStyle(fontSize: 25),
            //     );
            //   },
            // ),
            GetBuilder<mycontroller>(
              initState: (state) => mycontro.incriment(),
              dispose: (state) => mycontro.cleanUpTask(),
              builder: (controller) {
                return Text('${mycontro.count}');
              },
            )
          ],
        ),
      ),
    );
  }
}

class mycontroller extends GetxController {
  var count = 0;
  void incriment() async {
    await Future<int>.delayed(Duration(seconds: 4));
    count++;
    update();
  }

  void cleanUpTask() {
    print("clean up task");
  }
}
