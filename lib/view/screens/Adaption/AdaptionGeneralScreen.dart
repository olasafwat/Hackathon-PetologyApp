import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../widgets/AppBar/CustomAppBarBtn.dart';
import '../../widgets/Buttons/CustomBorderBtn.dart';
import '../../widgets/Buttons/CustomDropMenuBtn.dart';
import '../../widgets/Buttons/CustomHoverBtn.dart';
import '../../widgets/AppBar/CustomTxtAppBarBtn.dart';
import '../../widgets/AppBar/CustomAppBar.dart';
import '../../widgets/Footer/Footerr.dart';
import '../../widgets/Text/CustomTxt.dart';
import 'dart:math' as math;

import '../Authentication/Login/LoginScreen.dart';
import '../Authentication/SignUp/SignUpScreen.dart';
import '../Home/HomeScreen.dart';
import '../Request/RequestScreen.dart';
import 'AdaptionHomeScreen.dart';
import 'AdaptionInfoScreen.dart';

class AdaptionGeneralScreen extends StatefulWidget {
  const AdaptionGeneralScreen({Key? key}) : super(key: key);

  @override
  State<AdaptionGeneralScreen> createState() => _AdaptionGeneralScreenState();
}

class _AdaptionGeneralScreenState extends State<AdaptionGeneralScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: CustomAppBar()),

      body: SingleChildScrollView(
        child: Stack(
          children: [
            //background bottom
            Container(
                margin: EdgeInsets.only(top: 850, left: 250),
                child: Image.asset(
                  "assets/images/background/Icon material-pets.png",
                  width: 400,
                )),

            //background top
            Container(
                margin: EdgeInsets.only(top: 20, left: 1050),
                child: Image.asset(
                  "assets/images/background/Icon material-pets.png",
                  width: 400,
                )),

            //background LEFT TOP
            Container(
                margin: EdgeInsets.only(top: 20, left: 350),
                child: Transform(
                  transform: Matrix4.rotationY(math.pi),
                  child: Image.asset(
                    "assets/images/background/Icon material-pets.png",
                    width: 400,
                  ),
                )),

            Column(
              children: [
                //Names first (text)
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.,
                    children: [
                      //Bread
                      SizedBox(
                        width: 80,
                      ),
                      CustomTxt(
                          Title: "Bread",
                          ColorTxt: aftergrey,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.bold),

                      //Age
                      SizedBox(
                        width: 300,
                      ),
                      CustomTxt(
                          Title: "Age",
                          ColorTxt: aftergrey,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.bold),

                      //Size
                      SizedBox(
                        width: 300,
                      ),
                      CustomTxt(
                          Title: "Size",
                          ColorTxt: aftergrey,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.bold),

                      //Good with
                      SizedBox(
                        width: 300,
                      ),
                      CustomTxt(
                          Title: "Good with",
                          ColorTxt: aftergrey,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.bold),
                    ],
                  ),
                ),

                //Names first (Dropbox)
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      //Bread
                      SizedBox(
                        width: 80,
                      ),
                      CustomDropMenuBtn(
                        BoxWidth: boxWidthDropMenu,
                      ),

                      //Age
                      SizedBox(
                        width: 160,
                      ),
                      CustomDropMenuBtn(
                        BoxWidth: boxWidthDropMenu,
                      ),

                      //Size
                      SizedBox(
                        width: 160,
                      ),
                      CustomDropMenuBtn(
                        BoxWidth: boxWidthDropMenu,
                      ),

                      //Good with
                      SizedBox(
                        width: 160,
                      ),
                      CustomDropMenuBtn(
                        BoxWidth: boxWidthDropMenu,
                      )
                    ],
                  ),
                ),

                //Names second (text)
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.,
                    children: [
                      //Gender
                      SizedBox(
                        width: 80,
                      ),
                      CustomTxt(
                          Title: "Gender",
                          ColorTxt: aftergrey,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.bold),

                      //Color
                      SizedBox(
                        width: 270,
                      ),
                      CustomTxt(
                          Title: "Color",
                          ColorTxt: aftergrey,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.bold),

                      //Hair Length
                      SizedBox(
                        width: 300,
                      ),
                      CustomTxt(
                          Title: "Hair Length",
                          ColorTxt: aftergrey,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.bold),

                      //Care & Behavior
                      SizedBox(
                        width: 210,
                      ),
                      CustomTxt(
                          Title: "Care & Behavior",
                          ColorTxt: aftergrey,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.bold),
                    ],
                  ),
                ),

                //Names first (Dropbox)
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      //Gender
                      SizedBox(
                        width: 80,
                      ),
                      CustomDropMenuBtn(
                        BoxWidth: boxWidthDropMenu,
                      ),

                      //Color
                      SizedBox(
                        width: 160,
                      ),
                      CustomDropMenuBtn(
                        BoxWidth: boxWidthDropMenu,
                      ),

                      //Hair Length
                      SizedBox(
                        width: 160,
                      ),
                      CustomDropMenuBtn(
                        BoxWidth: boxWidthDropMenu,
                      ),

                      //Care & Behavior
                      SizedBox(
                        width: 160,
                      ),
                      CustomDropMenuBtn(
                        BoxWidth: boxWidthDropMenu,
                      )
                    ],
                  ),
                ),

                //card 1
                Row(
                  children: [
                    //Elsa
                    SizedBox(
                      width: 150,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomHoverBtn(
                          widthBtn: 340,
                          heightBtn: 500,
                          hoverColBtn: colCardAdpat,
                          colBtn: colCardAdpat,
                          thicknessBorder: 0,
                          txtBtn: "Elsa",
                          colrTxtBtn: aftergrey,
                          fontSizeBtn: fontLoginText,
                          Page: AdaptionInfoScreen(),
                        ),

                        //img
                        Container(
                          margin: const EdgeInsets.only(bottom: 200, top: 60),
                          padding: const EdgeInsets.only(bottom: 90),
                          child: Image.asset(
                            "assets/images/pic-aboutus2.png",
                            height: 380,
                          ),
                        ),

                        //btn
                        Container(
                          margin: EdgeInsets.only(top: 350),
                          child: ButtonTheme(
                            minWidth: 250,
                            height: 80,
                            child: CustomBorderBtn(
                                colBtn: aftergrey,
                                thickness: 0,
                                colThickness: colrTextBtn,
                                colTxt: colrTextBtn,
                                Page: AdaptionInfoScreen()),
                          ),
                        ),

                        //by who
                        Container(
                          margin: EdgeInsets.only(top: 450),
                          child: CustomTxt(
                              Title: "By Ola",
                              ColorTxt: brown,
                              FontSizeTxt: fontSmallText,
                              FontWeightTxt: FontWeight.bold),
                        )
                      ],
                    ),

                    //Roy
                    SizedBox(
                      width: 90,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomHoverBtn(
                            widthBtn: 340,
                            heightBtn: 500,
                            hoverColBtn: colCardAdpat,
                            colBtn: colCardAdpat,
                            thicknessBorder: 0,
                            txtBtn: "Roy",
                            colrTxtBtn: aftergrey,
                            fontSizeBtn: fontLoginText,
                            Page: AdaptionInfoScreen()),

                        //img
                        Container(
                          margin: const EdgeInsets.only(bottom: 200, top: 60),
                          padding: const EdgeInsets.only(bottom: 90),
                          child: Image.asset(
                            "assets/images/pic-aboutus.png",
                            height: 380,
                          ),
                        ),

                        //btn
                        Container(
                          margin: EdgeInsets.only(top: 350),
                          child: ButtonTheme(
                            minWidth: 250,
                            height: 80,
                            child: CustomBorderBtn(
                                colBtn: aftergrey,
                                thickness: 0,
                                colThickness: colrTextBtn,
                                colTxt: colrTextBtn,
                                Page: AdaptionInfoScreen()),
                          ),
                        ),

                        //by who
                        Container(
                          margin: EdgeInsets.only(top: 450),
                          child: CustomTxt(
                              Title: "By Ola",
                              ColorTxt: brown,
                              FontSizeTxt: fontSmallText,
                              FontWeightTxt: FontWeight.bold),
                        )
                      ],
                    ),

                    //Doby
                    SizedBox(
                      width: 90,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomHoverBtn(
                            widthBtn: 340,
                            heightBtn: 500,
                            hoverColBtn: colCardAdpat,
                            colBtn: colCardAdpat,
                            thicknessBorder: 0,
                            txtBtn: "Doby",
                            colrTxtBtn: aftergrey,
                            fontSizeBtn: fontLoginText,
                            Page: AdaptionInfoScreen()),

                        //img
                        Container(
                          margin: const EdgeInsets.only(bottom: 200, top: 60),
                          padding: const EdgeInsets.only(bottom: 90),
                          child: Image.asset(
                            "assets/images/pic-aboutus3.png",
                            height: 380,
                          ),
                        ),

                        //btn
                        Container(
                          margin: EdgeInsets.only(top: 350),
                          child: ButtonTheme(
                            minWidth: 250,
                            height: 80,
                            child: CustomBorderBtn(
                                colBtn: aftergrey,
                                thickness: 0,
                                colThickness: colrTextBtn,
                                colTxt: colrTextBtn,
                                Page: AdaptionInfoScreen()),
                          ),
                        ),

                        //by who
                        Container(
                          margin: EdgeInsets.only(top: 450),
                          child: CustomTxt(
                              Title: "By Ola",
                              ColorTxt: brown,
                              FontSizeTxt: fontSmallText,
                              FontWeightTxt: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),

                //card 2
                Row(
                  children: [
                    //Elsa
                    SizedBox(
                      width: 150,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomHoverBtn(
                            widthBtn: 340,
                            heightBtn: 500,
                            hoverColBtn: colCardAdpat,
                            colBtn: colCardAdpat,
                            thicknessBorder: 0,
                            txtBtn: "Elsa",
                            colrTxtBtn: aftergrey,
                            fontSizeBtn: fontLoginText,
                            Page: AdaptionInfoScreen()),

                        //img
                        Container(
                          margin: const EdgeInsets.only(bottom: 200, top: 60),
                          padding: const EdgeInsets.only(bottom: 90),
                          child: Image.asset(
                            "assets/images/pic-aboutus2.png",
                            height: 380,
                          ),
                        ),

                        //btn
                        Container(
                          margin: EdgeInsets.only(top: 350),
                          child: ButtonTheme(
                            minWidth: 250,
                            height: 80,
                            child: CustomBorderBtn(
                                colBtn: aftergrey,
                                thickness: 0,
                                colThickness: colrTextBtn,
                                colTxt: colrTextBtn,
                                Page: AdaptionInfoScreen()),
                          ),
                        ),

                        //by who
                        Container(
                          margin: EdgeInsets.only(top: 450),
                          child: CustomTxt(
                              Title: "By Ola",
                              ColorTxt: brown,
                              FontSizeTxt: fontSmallText,
                              FontWeightTxt: FontWeight.bold),
                        )
                      ],
                    ),

                    //Roy
                    SizedBox(
                      width: 90,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomHoverBtn(
                            widthBtn: 340,
                            heightBtn: 500,
                            hoverColBtn: colCardAdpat,
                            colBtn: colCardAdpat,
                            thicknessBorder: 0,
                            txtBtn: "Roy",
                            colrTxtBtn: aftergrey,
                            fontSizeBtn: fontLoginText,
                            Page: AdaptionInfoScreen()),

                        //img
                        Container(
                          margin: const EdgeInsets.only(bottom: 200, top: 60),
                          padding: const EdgeInsets.only(bottom: 90),
                          child: Image.asset(
                            "assets/images/pic-aboutus.png",
                            height: 380,
                          ),
                        ),

                        //btn
                        Container(
                          margin: EdgeInsets.only(top: 350),
                          child: ButtonTheme(
                            minWidth: 250,
                            height: 80,
                            child: CustomBorderBtn(
                                colBtn: aftergrey,
                                thickness: 0,
                                colThickness: colrTextBtn,
                                colTxt: colrTextBtn,
                                Page: AdaptionInfoScreen()),
                          ),
                        ),

                        //by who
                        Container(
                          margin: EdgeInsets.only(top: 450),
                          child: CustomTxt(
                              Title: "By Ola",
                              ColorTxt: brown,
                              FontSizeTxt: fontSmallText,
                              FontWeightTxt: FontWeight.bold),
                        )
                      ],
                    ),

                    //Doby
                    SizedBox(
                      width: 90,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomHoverBtn(
                            widthBtn: 340,
                            heightBtn: 500,
                            hoverColBtn: colCardAdpat,
                            colBtn: colCardAdpat,
                            thicknessBorder: 0,
                            txtBtn: "Doby",
                            colrTxtBtn: aftergrey,
                            fontSizeBtn: fontLoginText,
                            Page: AdaptionInfoScreen()),

                        //img
                        Container(
                          margin: const EdgeInsets.only(bottom: 200, top: 60),
                          padding: const EdgeInsets.only(bottom: 90),
                          child: Image.asset(
                            "assets/images/pic-aboutus3.png",
                            height: 380,
                          ),
                        ),

                        //btn
                        Container(
                          margin: EdgeInsets.only(top: 350),
                          child: ButtonTheme(
                            minWidth: 250,
                            height: 80,
                            child: CustomBorderBtn(
                                colBtn: aftergrey,
                                thickness: 0,
                                colThickness: colrTextBtn,
                                colTxt: colrTextBtn,
                                Page: AdaptionInfoScreen()),
                          ),
                        ),

                        //by who
                        Container(
                          margin: EdgeInsets.only(top: 450),
                          child: CustomTxt(
                              Title: "By Ola",
                              ColorTxt: brown,
                              FontSizeTxt: fontSmallText,
                              FontWeightTxt: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),

                Footerr()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
