import 'package:flutter/material.dart';
import 'package:konversi_suhu_flutter/widgetku/rowtext.dart';

import 'convert.dart';
import 'input.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamor = 0;
  double _fahrenheit = 0;

  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void _konversiSuhu() {
    setState(() {
      _inputUser = double.parse(myController.text);
      _reamor = (_inputUser - 273.15) * 0.8;
      _kelvin = 273.15 + _inputUser;
      _fahrenheit = (_inputUser * 9 / 5) + 32;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Konverter Suhu NDF"),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Input(myController: myController),
              rowText(
                  text1: 'Suhu (Kelvin)', text2: _kelvin.toStringAsFixed(2)),
              rowText(
                  text1: 'Suhu (Reamur)', text2: _reamor.toStringAsFixed(2)),
              rowText(
                  text1: 'Suhu (Fahrenheit)',
                  text2: _fahrenheit.toStringAsFixed(2)),
              Convert(konvertHandler: _konversiSuhu),
            ],
          ),
        ),
      ),
    );
  }
}
