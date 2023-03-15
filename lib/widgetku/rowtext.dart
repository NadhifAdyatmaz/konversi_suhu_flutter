import 'package:flutter/material.dart';

// ignore: camel_case_types
class rowText extends StatelessWidget {
  const rowText({super.key, required this.text1, required this.text2});

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 75,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 247, 154, 207),
          borderRadius: BorderRadius.circular(5),
        ),
        margin: const EdgeInsets.only(top: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                      fontSize: 20, fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
                Text(
                  text2,
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ));
  }
}
