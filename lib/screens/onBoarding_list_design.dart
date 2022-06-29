import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_boarding_task/component/button.dart';
import 'package:on_boarding_task/component/page_design.dart';
import 'package:on_boarding_task/screens/sign_in.dart';
import 'package:onboarding/onboarding.dart';

String title1='Get food delivery to your doorstep asap';
String body1='We have young and professional delivery team that will bring your food as soon as possible to your doorstep' ;
String title2='But any food from your favorite restaurant';
String body2='We are constantly adding your favourite restaurant throughout the territory and around your area carefully selected';
class OnBoarding extends StatelessWidget {
  OnBoarding({Key? key}) : super(key: key);
  int index=0;
  final onboardingPagesList = [
    PageModel(widget: PageDesign(title: title1, body: body1,imgUrl: 'images/on_way.svg',)),
    PageModel(widget: PageDesign(title: title2,body: body2,imgUrl: 'images/order_delivery.svg',)),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.black),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white70),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body:SingleChildScrollView(
        child: Container(
          color:Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               on_board(index, onboardingPagesList),
                Button(text: 'Get Started',function: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn())),color: Colors.teal,),
                RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'Sign Up', style: TextStyle(color: Colors.teal)),
                    ],
                  ),
                ),
                SizedBox(height: 10,)
              ],
            ),
        ),
      )
    );
  }
}
Widget on_board(var index,var onboardingPagesList){
  return Container(
          color: Colors.white,
          height: 500,
          child:Onboarding(
                pages: onboardingPagesList,
                onPageChange: (int pageIndex) {
                  index = pageIndex;
                },
                startPageIndex: 0,
            footerBuilder: (context, dragDistance, pagesLength, setIndex) {
              return ColoredBox(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIndicator(
                      netDragPercent: dragDistance,
                      pagesLength: pagesLength,
                      indicator: Indicator(
                        activeIndicator: ActiveIndicator(color: Colors.deepOrange,),
                        indicatorDesign: IndicatorDesign.line(
                          lineDesign: LineDesign(lineWidth: 30,
                            lineType: DesignType.line_uniform,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
              ) ,
        );
      }
