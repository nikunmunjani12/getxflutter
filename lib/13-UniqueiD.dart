import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Uniqueid13 extends StatefulWidget {
  const Uniqueid13({Key? key}) : super(key: key);

  @override
  State<Uniqueid13> createState() => _Uniqueid13State();
}

class _Uniqueid13State extends State<Uniqueid13> {
  mycontroller mycontro = Get.put(mycontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<mycontroller>(
              id: 'text count',
              builder: (controller) {
                return Text(
                  "Tha value is ${mycontro.count}",
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            GetBuilder<mycontroller>(
              builder: (controller) {
                return Text(
                  "Tha value is ${mycontro.count}",
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () => mycontro.incriment(),
              child: Text("Incriment"),
            )
          ],
        ),
      ),
    );
  }
}

class mycontroller extends GetxController {
  var count = 0;
  void incriment() {
    count++;
    update(['text count']);
  }
}
