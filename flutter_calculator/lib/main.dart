// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'widgets/CalcButton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

void main() => runApp(CalcApp());

class CalcApp extends StatefulWidget {
  CalcApp({Key key}) : super(key: key);

  @override
  CalcAppState createState() => CalcAppState();
}



class CalcAppState extends State<CalcApp> {

  String _expression = '';
  String _history = '';

  void numClick(String text){
    setState(() {
      _expression += text;
    });
  }

  void allClear(String text){
    setState(() {
      _expression = '';
      _history = '';
    });
  }

  void Clear(String text){
    setState(() {
      _expression = '';
    });
  }

  void Evaluate(String text){

    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      _history = _expression;
      _expression = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Container(
              alignment: Alignment(1,1),
              padding: EdgeInsets.all(12),
              child: Text(
                _history,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(fontSize: 20,
                      color: Colors.white30),
                ),
              ),
            ),

            Container(
              alignment: Alignment(1,1),
              padding: EdgeInsets.only(right: 12),
              child: Text(
                _expression,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(fontSize: 43,
                      color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: 'AC',
                   fillColor: 0xFF6C807F,
                   textSize: 20,
                   callback: allClear,
                ),
                CalcButton(
                  text: 'C',
                   fillColor: 0xFF6C807F,
                   textSize: 20,
                   callback: Clear,
                ),
                CalcButton(
                  text: '%',
                   fillColor: 0xFFFFFFFF,
                   textColor: 0xFF65BDAC,
                  textSize: 20,
                  callback: numClick,
                ),
                CalcButton(
                  text: '/',
                   fillColor: 0xFFFFFFFF,
                   textColor: 0xFF65BDAC,
                  textSize: 20,
                  callback: numClick,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '7',
                  callback: numClick,
                ),
                CalcButton(
                  text: '8',
                  callback: numClick,
                ),
                CalcButton(
                  text: '9',
                  callback: numClick,
                ),
                CalcButton(
                  text: '*',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  textSize: 20,
                  callback: numClick,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '4',
                  callback: numClick,
                ),
                CalcButton(
                  text: '5',
                  callback: numClick,
                ),
                CalcButton(
                  text: '6',
                  callback: numClick,
                ),
                CalcButton(
                  text: '-',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  textSize: 20,
                  callback: numClick,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '1',
                  callback: numClick,
                ),
                CalcButton(
                  text: '2',
                  callback: numClick,
                ),
                CalcButton(
                  text: '3',
                  callback: numClick,
                ),
                CalcButton(
                  text: '+',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  textSize: 20,
                  callback: numClick,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '.',
                  callback: numClick,
                ),
                CalcButton(
                  text: '0',
                  callback: numClick,
                ),
                CalcButton(
                  text: '00',
                  callback: numClick,
                ),
                CalcButton(
                  text: '=',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  textSize: 20,
                  callback: Evaluate,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}