import 'package:basic_calculator/my_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var userInput = 'Deepanshu';

  var answer = 'Rajput';

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
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Expanded(
              flex: 2,
              child: Center(
                child: Column(children: [
                  Text(
                    userInput.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    answer.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ]),
              ),
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
                      MyButton(content: 'AC', hcolor: Colors.orange),
                      MyButton(content: 'DEL', hcolor: Colors.orange),
                      MyButton(content: '%', hcolor: Colors.orange),
                      MyButton(content: '/', hcolor: Colors.orange),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(content: '1', hcolor: Colors.grey),
                      MyButton(content: '2', hcolor: Colors.grey),
                      MyButton(content: '3', hcolor: Colors.grey),
                      MyButton(content: 'x', hcolor: Colors.orange),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(content: '4', hcolor: Colors.grey),
                      MyButton(content: '5', hcolor: Colors.grey),
                      MyButton(content: '6', hcolor: Colors.grey),
                      MyButton(content: '-', hcolor: Colors.orange),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(content: '7', hcolor: Colors.grey),
                      MyButton(content: '8', hcolor: Colors.grey),
                      MyButton(content: '9', hcolor: Colors.grey),
                      MyButton(content: '+', hcolor: Colors.orange),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(content: '.', hcolor: Colors.orange),
                      MyButton(content: '0', hcolor: Colors.grey),
                      MyButton(content: '00', hcolor: Colors.orange),
                      MyButton(content: '=', hcolor: Colors.orange),
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
