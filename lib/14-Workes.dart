import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Workes14 extends StatefulWidget {
  const Workes14({Key? key}) : super(key: key);

  @override
  State<Workes14> createState() => _Workes14State();
}

class _Workes14State extends State<Workes14> {
  // TextEditingController one=TextEditingController();
  mycontroller mycontro = Get.put(mycontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => mycontro.incriment(),
              child: Text("Incriment"),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                // controller: one,
                onChanged: (value) {
                  mycontro.incriment();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class mycontroller extends GetxController {
  var count = 0.obs;
  void incriment() {
    count++;
  }

  @override
  void onInit() {
    ever(count, (_) => print(count));
  }
}
