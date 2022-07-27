import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../widgets/Buttons/CustomAppBarBtn.dart';
import '../../widgets/Buttons/CustomBorderBtn.dart';
import '../../widgets/Buttons/CustomDropMenuBtn.dart';
import '../../widgets/Buttons/CustomHoverBtn.dart';
import '../../widgets/Buttons/CustomTxtBtn.dart';
import '../../widgets/Footer/Footerr.dart';
import '../../widgets/Text/CustomTxt.dart';
import 'dart:math' as math;

class AdaptionHomeScreen extends StatefulWidget {
  const AdaptionHomeScreen({Key? key}) : super(key: key);

  @override
  State<AdaptionHomeScreen> createState() => _AdaptionHomeScreenState();
}

class _AdaptionHomeScreenState extends State<AdaptionHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: brown,
        leading: Image.asset(
          "assets/images/Logo/logo.png",
        ),
        leadingWidth: 300,
        actions: [
          //About Us
          CustomTxtBtn(Txt: 'About Us'),

          //Categories
          CustomTxtBtn(Txt: 'Categories'),

          //Request
          CustomTxtBtn(Txt: 'Request'),

          //Services
          CustomTxtBtn(Txt: 'Services'),

          //SignUp
          CustomAppBarBtn(Txt: 'SignUp'),

          //Login
          CustomAppBarBtn(Txt: 'Login'),
        ],
      ),
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
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.bold),

                      //Age
                      SizedBox(
                        width: 300,
                      ),
                      CustomTxt(
                          Title: "Age",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.bold),

                      //Size
                      SizedBox(
                        width: 300,
                      ),
                      CustomTxt(
                          Title: "Size",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.bold),

                      //Good with
                      SizedBox(
                        width: 300,
                      ),
                      CustomTxt(
                          Title: "Good with",
                          ColorTxt: aftergray,
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
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.bold),

                      //Color
                      SizedBox(
                        width: 270,
                      ),
                      CustomTxt(
                          Title: "Color",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.bold),

                      //Hair Length
                      SizedBox(
                        width: 300,
                      ),
                      CustomTxt(
                          Title: "Hair Length",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.bold),

                      //Care & Behavior
                      SizedBox(
                        width: 210,
                      ),
                      CustomTxt(
                          Title: "Care & Behavior",
                          ColorTxt: aftergray,
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

                //card
                Row(
                  children: [
                    SizedBox(width: 150,),
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
                            colrTxtBtn: aftergray,
                            fontSizeBtn: fontLoginText),

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
                              colBtn: aftergray,
                              thickness: 0,
                              colThickness: colrTextBtn,
                              colTxt: colrTextBtn,
                            ),
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
                    SizedBox(width: 90,),
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
                            colrTxtBtn: aftergray,
                            fontSizeBtn: fontLoginText),

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
                              colBtn: aftergray,
                              thickness: 0,
                              colThickness: colrTextBtn,
                              colTxt: colrTextBtn,
                            ),
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
                    SizedBox(width: 90,),
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
                            colrTxtBtn: aftergray,
                            fontSizeBtn: fontLoginText),

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
                              colBtn: aftergray,
                              thickness: 0,
                              colThickness: colrTextBtn,
                              colTxt: colrTextBtn,
                            ),
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

                Row(
                  children: [
                    SizedBox(width: 150,),
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
                            colrTxtBtn: aftergray,
                            fontSizeBtn: fontLoginText),

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
                              colBtn: aftergray,
                              thickness: 0,
                              colThickness: colrTextBtn,
                              colTxt: colrTextBtn,
                            ),
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
                    SizedBox(width: 90,),
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
                            colrTxtBtn: aftergray,
                            fontSizeBtn: fontLoginText),

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
                              colBtn: aftergray,
                              thickness: 0,
                              colThickness: colrTextBtn,
                              colTxt: colrTextBtn,
                            ),
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
                    SizedBox(width: 90,),
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
                            colrTxtBtn: aftergray,
                            fontSizeBtn: fontLoginText),

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
                              colBtn: aftergray,
                              thickness: 0,
                              colThickness: colrTextBtn,
                              colTxt: colrTextBtn,
                            ),
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
