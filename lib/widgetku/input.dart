import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.myController,
  }) : super(key: key);

  final TextEditingController myController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      decoration: const InputDecoration(hintText: "Masukkan Suhu (Celcius)"),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      controller: myController,
      keyboardType: TextInputType.number,
    );
  }
}
