import 'package:flutter/material.dart';

import '../../screens/Authentication/Login/LoginScreen.dart';



class CustomAuthBtn extends StatelessWidget {
  String? ImgLogo;
  String? Title;
  Color ColorBtn;
  Color ColorTxt;
  double? SizeImg;


  CustomAuthBtn({
    required this.ImgLogo,
    required this.Title,
    required this.ColorBtn,
    required this.ColorTxt,
    required this.SizeImg,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(240, 60),
            primary: ColorBtn,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.5)),
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return LoginScreen();
            }));
          },
          icon: Image.asset(
            "$ImgLogo",
            width: SizeImg,
          ),
          label:  Text(
              "$Title",
              style: TextStyle(
                  color: ColorTxt, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
    );
  }
}
