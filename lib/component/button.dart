import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback function;
  final Color color;
  final Color borderColor;
  final Color textColor;
  final double rad;

  const Button(
      {Key? key,
      required this.text,
      required this.function,
      required this.color,
      this.rad = 10, this.borderColor=Colors.transparent, this.textColor=Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: ElevatedButton(
        onPressed: () {
          function();
        },
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 20),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(rad),
                side: BorderSide(color: borderColor),),
          ),
        ),
      ),
    );
  }
}
