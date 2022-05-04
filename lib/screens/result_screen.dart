import 'package:flutter/material.dart';

import 'package:cara_ou_coroa/models/option.dart';
import 'home.dart';

class Result extends StatefulWidget {
  Option value;

  Result(this.value, {Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {

  @override
  Widget build(BuildContext context) {

    String _imagePath;
    if (widget.value == Option.head) {
      _imagePath = 'assets/images/moeda_cara.png';
    } else {
      _imagePath = 'assets/images/moeda_coroa.png';
    }

    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(_imagePath),
            GestureDetector(
              onTap: () { Navigator.pop(context); },
              child: Image.asset('assets/images/botao_voltar.png'),
            )
          ],
        ),
      ),
    );
  }
}
