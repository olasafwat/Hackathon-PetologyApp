import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../controller/provider/Provider_HomeScreen_FS.dart';
import '../../screens/Help/HelpFriendScreen.dart';
import '../Buttons/CustomArrowBtn.dart';
import '../Text/CustomTxt.dart';

class Card_HomeScreen_FS extends StatelessWidget {

  String? title;
  String? body;

  Card_HomeScreen_FS({
    required this.title,
    required this.body,
  });



  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 400,
          height: 500,
          //color: Colors.red,
          margin: EdgeInsets.only(top: 80, left: 100),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //title
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: CustomTxt(
                  Title: '$title',
                  ColorTxt: white,
                  FontSizeTxt: 50,
                  FontWeightTxt: FontWeight.bold,
                ),
              ),

              //subtitle
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CustomTxt(
                  Title:
                  '$body',
                  ColorTxt: colSubTitle,
                  FontSizeTxt: fontAppBar,
                  FontWeightTxt: FontWeight.bold,
                ),
              ),

              //button help
              Container(
                margin: EdgeInsets.only(right: 100),
                child: CustomArrowBtn(
                  colBtn: white,
                  txtBtn: "Help them",
                  colTxtBtn: black,
                  fontSize: fontBtn,
                  colIconArrow: black,
                  Page: HelpFriendScreen(),
                ),
              ),
            ],
          ),
        ),

        //img
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 180, left: 90),
              child: Image.asset(
                "assets/images/background/white circle background.png",
                width: 550,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 374, left: 150),
              child: Image.asset(
                "assets/images/background/Ellipse 3.png",
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 220, bottom: 130),
              child: Image.asset("assets/images/pic-aboutus.png",
                  width: 350),
            )
          ],
        ),
      ],
    );
  }


}
