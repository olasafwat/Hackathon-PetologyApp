import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_flutter_petology/view/widgets/Buttons/CustomCircleBtn.dart';
import 'package:hackathon_flutter_petology/view/widgets/Buttons/CustomSwipeBtn.dart';
import 'package:hackathon_flutter_petology/view/widgets/Text/CustomTxt.dart';

import '../../../constants.dart';
import '../../widgets/Buttons/CustomAppBarBtn.dart';
import '../../widgets/Buttons/CustomTxtBtn.dart';

class AdaptionInfoScreen extends StatefulWidget {
  const AdaptionInfoScreen({Key? key}) : super(key: key);

  @override
  State<AdaptionInfoScreen> createState() => _AdaptionInfoScreenState();
}

class _AdaptionInfoScreenState extends State<AdaptionInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: brown,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage('assets/images/background/Rectangle 11.png'),
                  fit: BoxFit.cover)),
        ),
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
          child: Column(
            children: [
              Container(
                  height: 700,
                  //color: brown,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: AssetImage("assets/images/background/Rectangle 11.png"),
                          fit: BoxFit.cover)),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: CustomSwipeBtn(textDirection: TextDirection.rtl),
                  ),

                  //img
                  Stack(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top: 180, left: 70),
                        child: Image.asset(
                          "assets/images/background/white circle background.png",
                          width: 550,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 374, left: 130),
                        child: Image.asset(
                          "assets/images/background/Ellipse 3.png",
                          height: 200,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200, bottom: 130),
                        child: Image.asset("assets/images/pic-aboutus.png",
                            width: 350),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 210),
                    child: CustomSwipeBtn(textDirection: TextDirection.ltr),
                  ),
                  Container(
                      height: 700,
                      //color: brown,
                      decoration: BoxDecoration(
                          image: new DecorationImage(
                              image: AssetImage("assets/images/background/Rectangle 11.png"),
                              fit: BoxFit.cover))),
                ],
              )),

              Container(
                padding: const EdgeInsets.only(top: 70, left: 70),
                width: double.infinity,
                height: 800,

                child: SingleChildScrollView(
                  child: Column(
                   // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      //Name
                      CustomTxt(
                          Title: "Elsa",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLastTitle,
                          FontWeightTxt: FontWeight.bold),

                      //Shared by
                      SizedBox(height: 30,),
                      CustomTxt(
                          Title: "Shared by: Ola Safwat ",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLastText2,
                          FontWeightTxt: FontWeight.normal),

                      //Specs of pet
                      SizedBox(height: 30,),
                      CustomTxt(
                          Title: "Domestic Short Hair  Fredericton, NB",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLastText2,
                          FontWeightTxt: FontWeight.normal),

                      //Rest of Specs pet
                      SizedBox(height: 15,),
                       Container(
                          height: 90,
                          width: double.maxFinite,
                          color: colRowLine,
                          child: Row(
                            children: [
                              CustomTxt(
                                  Title: "Adult  Female  Medium  Tabby (Brown / Chocolate)",
                                  ColorTxt: aftergray,
                                  FontSizeTxt: fontLastText2,
                                  FontWeightTxt: FontWeight.bold),
                            ],
                          ),
                        ),

                      //About
                      SizedBox(height: 30,),
                      CustomTxt(
                          Title: "About",
                          ColorTxt: aftergray,
                          FontSizeTxt: 50,
                          FontWeightTxt: FontWeight.bold),

                      //HOUSE-TRAINED
                      SizedBox(height: 30,),
                      CustomTxt(
                          Title: "HOUSE-TRAINED \nYes",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLastText2,
                          FontWeightTxt: FontWeight.normal),

                      //HEALTH
                      SizedBox(height: 30,),
                      CustomTxt(
                          Title: "HEALTH \nVaccinations up to date, spayed / neutered.",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLastText2,
                          FontWeightTxt: FontWeight.normal),

                      //GOOD
                      SizedBox(height: 30,),
                      CustomTxt(
                          Title: "GOOD IN A HOME WITH Other \ncats.",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLastText2,
                          FontWeightTxt: FontWeight.normal),


                      //nChildren
                      SizedBox(height: 30,),
                      CustomTxt(
                          Title: "PREFERS A HOME WITHOUT \nChildren.",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLastText2,
                          FontWeightTxt: FontWeight.normal),

                      SizedBox(height: 15,),
                      Container(
                        height: 90,
                        width: double.maxFinite,
                        color: colRowLine,
                        child: Row(
                          children: [

                            Image.asset("assets/images/icons/Icon ionic-ios-notifications-outline.png",width: 50,),
                            CustomTxt(
                                Title: "Petfinder recommends that you should always take reasonable \nsecurity steps before making adabtion.",
                                ColorTxt: aftergray,
                                FontSizeTxt: 20,
                                FontWeightTxt: FontWeight.bold),
                          ],
                        ),
                      ),



                    ],
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}
