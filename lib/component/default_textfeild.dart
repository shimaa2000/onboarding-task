import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  DefaultTextField({Key? key, required this.validateText, required this.hintTxt , required this.text, this.secure=false}) : super(key: key);
  final String text;
  final String validateText;
  final String hintTxt;
  final bool secure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return validateText;
              }
            },
            obscureText: secure,
            decoration: InputDecoration(
              hintText: hintTxt,
              hintStyle: TextStyle(color: Colors.grey),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1,),
                borderRadius: BorderRadius.circular(5),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}