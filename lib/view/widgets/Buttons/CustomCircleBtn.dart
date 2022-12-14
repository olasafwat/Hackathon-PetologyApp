import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../screens/Authentication/Login/LoginScreen.dart';
import '../Text/CustomTxt.dart';



class CustomCircleBtn extends StatelessWidget {

  String? imgBtn;
  String? txtBtn;
  double? sizeImg;
  StatefulWidget Page;


  CustomCircleBtn({
    required this.imgBtn,
    required this.txtBtn,
    required this.sizeImg,
    required this.Page,
  });

  //TODO Function Navigate to Pages
  void NavigatorTo(BuildContext context)
  {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) {
          return Page;
        }));

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        SizedBox(
          width: 250,
          height: 250,
          child: Container(
            margin: EdgeInsets.only(top: 50),
            child: FloatingActionButton(
              backgroundColor: brown,
              onPressed: () {
                return NavigatorTo(context);
              },
              child: Container(
                margin: EdgeInsets.only(top:60),
                child: CustomTxt(
                    Title: "$txtBtn",
                    ColorTxt: colrTextBtn,
                    FontSizeTxt: fontLastText2,
                    FontWeightTxt: FontWeight.bold),
              ),

            ),
          ),
        ),


        Container(
            margin: EdgeInsets.only(left: 70),
            child: Image.network("$imgBtn",width: sizeImg,)),


      ],
    );
  }


}
