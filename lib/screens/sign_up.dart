import 'package:flutter/material.dart';
import 'package:on_boarding_task/component/country_field.dart';
import 'package:on_boarding_task/component/default_textfeild.dart';
import 'package:on_boarding_task/component/google_button.dart';
import 'package:on_boarding_task/screens/sign_in.dart';

import '../component/button.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image(
          image: AssetImage('images/back.jpg'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
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
                      'Register',
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
                DefaultTextField(text: 'Email',hintTxt: 'Eg: example@email.com', validateText: 'Please enter your email',),
                CountryTextField(),
                DefaultTextField(text: 'Password',hintTxt: 'Password', validateText: 'Please enter your password',secure: true,),
                Button(
                  text: 'Register',
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
                      .push(MaterialPageRoute(builder: (context) => SignIn())),
                  child: RichText(
                    text: TextSpan(
                      text: 'Has an account? ',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      children: const <TextSpan>[
                        TextSpan(
                            text: 'Sign in here',
                            style: TextStyle(color: Colors.blueAccent)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'By regretting your account, you are agree to our ',
                    style: TextStyle(fontSize: 15, color: Colors.black26,),
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'terms and conditions', style: TextStyle(color: Colors.blueAccent)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
