import 'package:flutter/material.dart';
class GoogleButton extends StatelessWidget {
  const GoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5.0),
              side: BorderSide(color: Colors.blueAccent),
            )),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'http://pngimg.com/uploads/google/google_PNG19635.png',
              width: 20,
              height: 50,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text('Sign with by google')
          ],
        ),
      ),
    );
  }
}
