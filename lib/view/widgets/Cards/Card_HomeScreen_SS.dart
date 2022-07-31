import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../Text/CustomTxt.dart';

class Card_HomeScreen_SS extends StatelessWidget {
  String? title;
  String? body;

  Card_HomeScreen_SS({
    this.title,
    this.body,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
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

              //cat
              Padding(
                padding: const EdgeInsets.only(
                    left: 180, bottom: 130, top: 150),
                child: Image.asset("assets/images/pic-aboutus22.png",
                    width: 350),
              ),

              //dog
              Padding(
                padding:
                const EdgeInsets.only(left: 220, bottom: 130),
                child: Image.asset("assets/images/pic-aboutus2.png",
                    width: 350),
              ),
            ],
          ),

          //background top right + paragraph
          Stack(
            children: [
              //background top right
              Container(
                  margin: EdgeInsets.only(right: 50, top: 20),
                  child: Image.asset(
                    "assets/images/background/Icon material-pets.png",
                    width: 500,
                  )),

              //paragraph
              Container(
                //alignment: FractionalOffset.center,
                //color: Colors.red,
                width: 500,
                height: 500,
                margin: EdgeInsets.only(top: 40, left: 10),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //title
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 60, right: 152),
                      child: CustomTxt(
                        Title: '$title',
                        ColorTxt: black,
                        FontSizeTxt: 50,
                        FontWeightTxt: FontWeight.bold,
                      ),
                    ),

                    //subtitle
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: CustomTxt(
                        Title:
                        "$body",
                        ColorTxt: Colors.black45,
                        FontSizeTxt: fontAppBar,
                        FontWeightTxt: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


}
