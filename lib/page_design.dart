import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageDesign extends StatelessWidget {
  final String title;
  final String body;
  const PageDesign({Key? key, required this.title,required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('images/on_way.svg'),
            Text(
              title,

              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              body,

              style: TextStyle(fontSize: 15, color: Colors.black38),
              textAlign: TextAlign.center,
            ),
          ]),
    );
  }
}
