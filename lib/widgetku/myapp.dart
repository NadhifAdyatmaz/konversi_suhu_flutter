import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
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
              Container(
                  width: 200,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: const EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 0),
                            child: const Text(
                              "Suhu (Kelvin)",
                              style: TextStyle(
                                  fontSize: 20, fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                              _kelvin.toStringAsFixed(2),
                              style: const TextStyle(fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 200,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 0),
                            child: const Text(
                              "Suhu (Reamor)",
                              style: TextStyle(
                                  fontSize: 20, fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                              _reamor.toStringAsFixed(2),
                              style: const TextStyle(fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 200,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 0),
                            child: const Text(
                              "Suhu (Fahrenheit)",
                              style: TextStyle(
                                  fontSize: 20, fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                              _fahrenheit.toStringAsFixed(2),
                              style: const TextStyle(fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
              Convert(konvertHandler: _konversiSuhu),
            ],
          ),
        ),
      ),
    );
  }
}
