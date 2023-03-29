import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.result,
  }) : super(key: key);

  final double result;

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
        child: Column(
          children: <Widget>[
            const Text(
              "Hasil",
              style: const TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.justify,
            ),
            Text(
              result.toStringAsFixed(2),
              style: const TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
