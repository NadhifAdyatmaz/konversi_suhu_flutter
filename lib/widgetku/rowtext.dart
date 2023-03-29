import 'package:flutter/material.dart';

import 'convert.dart';
import 'input.dart';
import 'result.dart';

class rowText extends StatefulWidget {
  const rowText({Key? key}) : super(key: key);

  @override
  State<rowText> createState() => _rowTextState();
}

class _rowTextState extends State<rowText> {
  double _inputUser = 0;

  final myController = TextEditingController();

  String _newValue = "Kelvin";
  double _result = 0;
  String changeValue = "";

  List<String> listViewItem = <String>[];

  var listItem = ["Kelvin", "Reamur"];

  get key => null;

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void konversiSuhu() {
    setState(() {
      _inputUser = double.parse(myController.text);
      if (_newValue == "Kelvin")
        _result = 273.15 + _inputUser;
      else
        _result = (_inputUser - 273.15) * 0.8;
    });

    listViewItem.add(_newValue.toString() + " : " + _result.toStringAsFixed(2));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Input(myController: myController),
          DropdownButton<String>(
            items: listItem.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            value: _newValue,
            onChanged: (String? changeValue) {
              setState(() {
                _newValue = changeValue!;
                konversiSuhu();
              });
            },
          ),
          Result(result: _result),
          Convert(konvertHandler: konversiSuhu),
          Container(child: const Text("Riwayat Konversi")),
          Expanded(
            child: ListView(
              children: listViewItem.map((String value) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    value,
                    style: const TextStyle(fontSize: 15),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
