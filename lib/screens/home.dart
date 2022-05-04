import 'package:flutter/material.dart';
import 'dart:math';

import 'package:cara_ou_coroa/screens/result_screen.dart';
import 'package:cara_ou_coroa/models/option.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _showResult () {
    var options = [Option.head, Option.tails];
    var number = Random().nextInt( options.length );
    var result = options[number];

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Result(result)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            GestureDetector(
              onTap: _showResult,
              child: Image.asset('assets/images/botao_jogar.png'),
            )
          ],
        ),
      ),
    );
  }
}
