import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LangugeInternational15 extends StatefulWidget {
  const LangugeInternational15({Key? key}) : super(key: key);

  @override
  State<LangugeInternational15> createState() => _LangugeInternational15State();
}

class _LangugeInternational15State extends State<LangugeInternational15> {
  final List locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'हिंदी ', 'locale': Locale('hi', 'IN')},
    {'name': 'ಕನ್ನಡ', 'locale': Locale('kn', 'US')},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'name'.tr,
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'surname'.tr,
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'age'.tr,
              style: TextStyle(fontSize: 35),
            ),
            ElevatedButton(
              onPressed: () {
                buildDialog(context);
              },
              child: Text("Change Language"),
            )
          ],
        ),
      ),
    );
  }

  buildDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("choice language"),
        content: Container(
          width: double.maxFinite,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: GestureDetector(
                    child: Text(
                      locale[index]['name'],
                    ),
                    onTap: () {
                      updateLanguage(locale[index]['locale']);
                    },
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.blue,
                );
              },
              itemCount: locale.length),
        ),
      ),
    );
  }

  updateLanguage(locale) {
    Get.back();
    Get.updateLocale(locale);
  }
}
