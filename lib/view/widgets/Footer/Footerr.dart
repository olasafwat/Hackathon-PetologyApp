import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../Text/CustomTxt.dart';
import 'FooterForm.dart';
import 'dart:math' as math;

class Footerr extends StatelessWidget {
  String? email;
  String? location;
  String? phone;
  String? location2;


  Footerr({
    required this.email,
    required this.location,
    required this.phone,
    required this.location2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      //color: brown,
      decoration: BoxDecoration(
          image: DecorationImage(
            image:
            AssetImage("assets/images/background/Rectangle 11.png"),
            fit: BoxFit.cover,
          )),
      child: Row(
        children: [

          //for any question
          Row(
            children: [
              Stack(
                children: [
                  //leg top
                  Container(
                      margin: EdgeInsets.only(top: 50, left: 420),
                      child: Transform(
                          transform: Matrix4.rotationY(math.pi),
                          child: Image.asset(
                            "assets/images/background/Icon material-pets.png",
                            color:colFooter,
                            width: 100,
                          ))),
                  Column(
                    children: [
                      //for any question
                      SizedBox(
                        height: 80,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: CustomTxt(Title: "For any question",
                            ColorTxt: colrTextBtn,
                            FontSizeTxt: fontLastTitle,
                            FontWeightTxt: FontWeight.bold),
                      ),


                      //email
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 90),
                        child: FooterForm(
                          imgIcon: 'assets/images/icons/email.png',
                          txtIocn: '$email',
                          sizeIcon: 50,
                        ),
                      ),

                      SizedBox(height: 50,),
                      //phone
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: FooterForm(
                          imgIcon: 'assets/images/icons/phone.png',
                          txtIocn: '$phone',
                          sizeIcon: 40,
                        ),
                      ),

                    ],
                  ),
                ],

              )
            ],
          ),

          SizedBox(width: 50,),

          //We are waiting you
          Row(
            children: [
              Stack(
                children: [
                  //leg top
                  Container(
                      margin: EdgeInsets.only(top: 50, left: 420),
                      child: Transform(
                          transform: Matrix4.rotationY(math.pi),
                          child: Image.asset(
                            "assets/images/background/Icon material-pets.png",
                            color:colFooter,
                            width: 100,
                          ))),
                  Column(
                    children: [
                      //We are waiting you
                      SizedBox(
                        height: 80,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: CustomTxt(Title: "We are waiting you",
                            ColorTxt: colrTextBtn,
                            FontSizeTxt: fontLastTitle,
                            FontWeightTxt: FontWeight.bold),
                      ),


                      //location 1
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 90),
                        child: FooterForm(
                          imgIcon: 'assets/images/icons/location-on.png',
                          txtIocn: '$location',
                          sizeIcon: 30,
                        ),
                      ),


                      //location 2
                      SizedBox(height: 40,),
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        child: FooterForm(
                          imgIcon: 'assets/images/icons/location-on.png',
                          txtIocn: '$location2',
                          sizeIcon: 30,
                        ),
                      ),

                    ],
                  ),
                ],

              )
            ],
          ),

          Image.asset("assets/images/footer.png")
        ],
      ),
    );
  }
}
