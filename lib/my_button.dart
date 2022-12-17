import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  var content = '';
  Color hcolor = Colors.black;
  final VoidCallback press;
  MyButton({
    super.key,
    required this.press,
    required this.content,
    required this.hcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
          onPressed: () => press(),
          style: OutlinedButton.styleFrom(
              fixedSize: const Size(10, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              side: BorderSide(color: hcolor)),
          child: Text(
            content,
            style: TextStyle(color: hcolor, fontSize: 18),
          )),
    );
  }
}
