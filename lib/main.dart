import 'package:basic_calculator/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var userInput = '';

  double answer = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Calculator",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 35,
                fontFamily: 'Rubik Burned',
              ),
            ),
          ),
          elevation: 00,
          backgroundColor: Colors.transparent,
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Expanded(
              flex: 2,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        userInput.toString(),
                        textAlign: TextAlign.end,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        answer.toString(),
                        textAlign: TextAlign.end,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 35),
                      ),
                    ),
                  ]),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      MyButton(
                        content: 'AC',
                        hcolor: Colors.orange,
                        press: () {
                          userInput = '';
                          answer = 0.0;
                          setState(() {});
                        },
                      ),
                      MyButton(
                        content: 'DEL',
                        hcolor: Colors.orange,
                        press: () {
                          userInput =
                              userInput.substring(0, userInput.length - 1);
                          setState(() {});
                        },
                      ),
                      MyButton(
                        content: '%',
                        hcolor: Colors.orange,
                        press: () {
                          userInput += '%';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        content: '/',
                        hcolor: Colors.orange,
                        press: () {
                          userInput += '/';
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        content: '1',
                        hcolor: Colors.grey,
                        press: () {
                          userInput += '1';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        content: '2',
                        hcolor: Colors.grey,
                        press: () {
                          userInput += '2';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        content: '3',
                        hcolor: Colors.grey,
                        press: () {
                          userInput += '3';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        content: 'x',
                        hcolor: Colors.orange,
                        press: () {
                          userInput += 'x';
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        content: '4',
                        hcolor: Colors.grey,
                        press: () {
                          userInput += '4';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        content: '5',
                        hcolor: Colors.grey,
                        press: () {
                          userInput += '5';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        content: '6',
                        hcolor: Colors.grey,
                        press: () {
                          userInput += '6';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        content: '-',
                        hcolor: Colors.orange,
                        press: () {
                          userInput += '-';
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        content: '7',
                        hcolor: Colors.grey,
                        press: () {
                          userInput += '7';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        content: '8',
                        hcolor: Colors.grey,
                        press: () {
                          userInput += '8';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        content: '9',
                        hcolor: Colors.grey,
                        press: () {
                          userInput += '1';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        content: '+',
                        hcolor: Colors.orange,
                        press: () {
                          userInput += '+';
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        content: '.',
                        hcolor: Colors.orange,
                        press: () {
                          userInput += '.';
                          setState(() {});
                        },
                      ),
                      MyButton(
                          content: '0',
                          hcolor: Colors.grey,
                          press: () {
                            userInput += '0';
                            setState(() {});
                          }),
                      MyButton(
                          content: '00',
                          hcolor: Colors.orange,
                          press: () {
                            userInput += '00';
                            setState(() {});
                          }),
                      MyButton(
                        content: '=',
                        hcolor: Colors.orange,
                        press: () {
                          answer = equalPress(userInput);
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
        backgroundColor: Colors.black,
      ),
    );
  }
}

double equalPress(String userInput) {
  String finalIn = userInput;
  finalIn = userInput.replaceAll('x', '*');

  Parser p = Parser();
  Expression exp = p.parse(finalIn);
  ContextModel cm = ContextModel();

  double eval = exp.evaluate(EvaluationType.REAL, cm);
  return eval;
}
