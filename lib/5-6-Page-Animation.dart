import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageAnimation5 extends StatefulWidget {
  const PageAnimation5({Key? key}) : super(key: key);

  @override
  State<PageAnimation5> createState() => _PageAnimation5State();
}

class _PageAnimation5State extends State<PageAnimation5> {
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
                Get.to(
                  Pagecoll(),
                  fullscreenDialog: true,
                  transition: Transition.zoom,
                  arguments: "Data from Main",
                  duration: Duration(milliseconds: 3500),
                  curve: Curves.bounceInOut,
                );
              },
              child: Text("Go to home"),
            ),
          ],
        ),
      ),
    );
  }
}

class Pagecoll extends StatefulWidget {
  const Pagecoll({Key? key}) : super(key: key);

  @override
  State<Pagecoll> createState() => _PagecollState();
}

class _PagecollState extends State<Pagecoll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "This is home screen",
              style: TextStyle(color: Colors.deepPurple, fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {},
              child: Text(
                "Next Screen",
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                Get.back();
              },
              child: Text(
                "Back to Main",
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "${Get.arguments}",
              style: TextStyle(color: Colors.green, fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
