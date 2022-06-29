import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:on_boarding_task/component/country_field.dart';
import 'package:on_boarding_task/component/google_button.dart';
import 'package:on_boarding_task/screens/sign_up.dart';

import '../component/button.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 200),
        child: AppBar(
          flexibleSpace: Image(
            image: AssetImage('images/back.jpg'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Welcome to Fashion Daily',
                  style: TextStyle(fontSize: 15, color: Colors.black38),
                  textAlign: TextAlign.start,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sign in',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              'Help',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.blueAccent),
                              textAlign: TextAlign.center,
                            ),
                            Icon(
                              Icons.help,
                              color: Colors.blueAccent,
                            ),
                          ],
                        ))
                  ],
                ),
                CountryTextField(),
                Button(
                  text: 'Sign In',
                  function: () {},
                  color: Colors.blueAccent,
                  rad: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 2,
                      width: 150,
                      color: Colors.black12,
                    ),
                    Text(
                      'Or',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                      textAlign: TextAlign.start,
                    ),
                    Container(
                      height: 2,
                      width: 150,
                      color: Colors.black12,
                    ),
                  ],
                ),
                GoogleButton(),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => SignUp())),
                  child: RichText(
                    text: TextSpan(
                      text: 'Doesn\'t have any account? ',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      children: const <TextSpan>[
                        TextSpan(
                            text: 'Register here',
                            style: TextStyle(color: Colors.blueAccent)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Use the application according to Policy roles. Any kind of violations will be subject to sanctions',
                  style: TextStyle(fontSize: 15, color: Colors.black38),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
