import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Statemanegementname8 extends StatefulWidget {
  const Statemanegementname8({Key? key}) : super(key: key);

  @override
  State<Statemanegementname8> createState() => _Statemanegementname8State();
}

class _Statemanegementname8State extends State<Statemanegementname8> {
  var Std = student();
  final Std1 = student(name1: "nikunj", age1: 25).obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "Name is ${Std.name.value}",
                style: TextStyle(fontSize: 25),
              ),
            ),
            Obx(
              () => Text(
                "Name is ${Std1.value.name1}",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Std.name.value = Std.name.value.toUpperCase();
              },
              child: Text("Upper"),
            ),
            ElevatedButton(
              onPressed: () {
                Std1.update((Std1) {
                  Std1?.name1 = Std1.name1.toString().toUpperCase();
                });
              },
              child: Text("Upper"),
            )
          ],
        ),
      ),
    );
  }
}

class student {
  var name = "nikunj".obs;
  var name1;
  var age1;
  student({this.name1, this.age1});
}
