import 'package:flutter/material.dart';

class Convert extends StatelessWidget {
  const Convert({Key? key, required this.konvertHandler}) : super(key: key);

  final Function konvertHandler;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 170),
        width: double.infinity,
        height: 50,
        child: TextButton(
            onPressed: () {
              konvertHandler();
            },
            style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 241, 6, 147)),
            child: const Text(
              "Konversi Suhu",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            )));
  }
}
