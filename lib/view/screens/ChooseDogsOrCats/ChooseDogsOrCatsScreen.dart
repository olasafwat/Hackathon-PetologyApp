import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../widgets/Buttons/CustomHoverBtn.dart';
import '../../widgets/Text/CustomTxt.dart';
import '../Adaption/AdaptionGeneralScreen.dart';
import '../Adaption/AdaptionHomeScreen.dart';
import 'dart:math' as math;

class ChooseDogsOrCatsScreen extends StatefulWidget {
  const ChooseDogsOrCatsScreen({Key? key}) : super(key: key);

  @override
  State<ChooseDogsOrCatsScreen> createState() => _ChooseDogsOrCatsScreenState();
}

class _ChooseDogsOrCatsScreenState extends State<ChooseDogsOrCatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/background/background3.jpg'),
                      fit: BoxFit.cover),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  decoration:
                      new BoxDecoration(color: Colors.white.withOpacity(0.0)),
                ),
              )),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 100, bottom: 50),
              width: 1100,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          // img leg top
                          Container(
                              margin: EdgeInsets.only(top: 60, left: 480),
                              child: Transform(
                                  transform: Matrix4.rotationY(math.pi),
                                  child: Image.asset(
                                    "assets/images/background/Icon material-pets.png",color: colrTextBtn,
                                    width: 85,
                                  ))),


                          //title 1
                          Container(
                            //margin: const EdgeInsets.only(top: 10),
                            child: CustomTxt(
                              Title: 'Lets get this right ....',
                              ColorTxt: black,
                              FontSizeTxt: fontLastTitle,
                              FontWeightTxt: FontWeight.bold,
                            ),
                          ),

                          //title 2
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            child: CustomTxt(
                                Title: 'What kind of friend you looking for?',
                                ColorTxt: Colors.black,
                                FontSizeTxt: fontSubTitle,
                                FontWeightTxt: FontWeight.normal),
                          ),
                          SizedBox(
                            height: 70,
                          ),

                          //btn dog + btn cat
                          Row(
                            children: [
                              //btn dog
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  //text
                                  Container(
                                    margin: const EdgeInsets.only(top: 15),
                                    child: CustomHoverBtn(
                                      widthBtn: 200,
                                      heightBtn: 210,
                                      hoverColBtn: colrTextBtn,
                                      colBtn: colrTextBtn,
                                      thicknessBorder: 3,
                                      txtBtn: "Dogs",
                                      colrTxtBtn: aftergrey,
                                      fontSizeBtn: fontLastText2,
                                      Page: AdaptionHomeScreen(),
                                    ),
                                  ),

                                  //img
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 10, top: 5),
                                    child: Image.asset(
                                      "assets/images/icons/dog.png",
                                      width: 100,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                width: 100,
                              ),

                              //btn cat
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  //text
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: CustomHoverBtn(
                                        widthBtn: 200,
                                        heightBtn: 210,
                                        hoverColBtn: colrTextBtn,
                                        colBtn: white,
                                        thicknessBorder: 1,
                                        txtBtn: "Cats",
                                        colrTxtBtn: aftergrey,
                                        fontSizeBtn: fontLastText2,
                                        Page: AdaptionHomeScreen()),
                                  ),

                                  //img
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 5),
                                    child: Image.asset(
                                      "assets/images/icons/cat.png",
                                      width: 100,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],

        /*decoration: BoxDecoration(
          border: Border.all(color: black, width: 2),
          borderRadius: BorderRadius.circular(25),
        ),*/

        //color: lightblue,
      ),
    );
  }
}
