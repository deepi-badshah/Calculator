import 'package:flutter/material.dart';
import 'package:basic_calculator/main.dart';

class MyButton extends StatelessWidget {
  var content = '';
  Color hcolor = Colors.black;
  MyButton({
    super.key,
    required this.content,
    required this.hcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
          onPressed: (() {
            //userInput += '5';
          }),
          style: OutlinedButton.styleFrom(
              fixedSize: const Size(10, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              //foregroundColor: Colors.white,
              side: BorderSide(color: hcolor)),
          child: Text(
            content,
            style: TextStyle(color: hcolor, fontSize: 18),
          )),
    );
  }
}
