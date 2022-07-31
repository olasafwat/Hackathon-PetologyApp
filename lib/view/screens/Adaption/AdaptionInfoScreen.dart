import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_flutter_petology/view/widgets/Buttons/CustomCircleBtn.dart';
import 'package:hackathon_flutter_petology/view/widgets/Buttons/CustomSwipeBtn.dart';
import 'package:hackathon_flutter_petology/view/widgets/Footer/Footerr.dart';
import 'package:hackathon_flutter_petology/view/widgets/Text/CustomTxt.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../controller/provider/Provider_Footer.dart';
import '../../widgets/AppBar/CustomAppBarBtn.dart';
import '../../widgets/AppBar/CustomTxtAppBarBtn.dart';
import '../../widgets/AppBar/CustomAppBar.dart';
import '../Authentication/Login/LoginScreen.dart';
import '../Authentication/SignUp/SignUpScreen.dart';
import '../Home/HomeScreen.dart';
import '../Request/RequestScreen.dart';
import 'AdaptionScreen_HowFeedCat.dart';

class AdaptionInfoScreen extends StatefulWidget {
  const AdaptionInfoScreen({Key? key}) : super(key: key);

  @override
  State<AdaptionInfoScreen> createState() => _AdaptionInfoScreenState();
}

class _AdaptionInfoScreenState extends State<AdaptionInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: CustomAppBar()),

      body: SingleChildScrollView(
        child: Column(
          children: [
            //background
            Container(
                height: 700,
                //color: brown,
                decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: AssetImage(
                            "assets/images/background/Rectangle 11.png"),
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
                          padding:
                              const EdgeInsets.only(left: 200, bottom: 130),
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
                                image: AssetImage(
                                    "assets/images/background/Rectangle 11.png"),
                                fit: BoxFit.cover))),
                  ],
                )),

            //body
            Container(
              padding: const EdgeInsets.only(top: 70, left: 70),
              width: double.infinity,
              height: 1500,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  //Name
                  CustomTxt(
                      Title: "Elsa",
                      ColorTxt: aftergrey,
                      FontSizeTxt: fontLastTitle,
                      FontWeightTxt: FontWeight.bold),

                  //Shared by
                  SizedBox(
                    height: 30,
                  ),
                  CustomTxt(
                      Title: "Shared by: Ola Safwat ",
                      ColorTxt: aftergrey,
                      FontSizeTxt: fontLastText2,
                      FontWeightTxt: FontWeight.normal),

                  //Specs of pet
                  SizedBox(
                    height: 30,
                  ),
                  CustomTxt(
                      Title: "Domestic Short Hair  Fredericton, NB",
                      ColorTxt: aftergrey,
                      FontSizeTxt: fontLastText2,
                      FontWeightTxt: FontWeight.normal),

                  //Rest of Specs pet
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 90,
                    width: double.maxFinite,
                    color: colRowLine,
                    child: Row(
                      children: [
                        CustomTxt(
                            Title:
                                "Adult  Female  Medium  Tabby (Brown / Chocolate)",
                            ColorTxt: aftergrey,
                            FontSizeTxt: fontLastText2,
                            FontWeightTxt: FontWeight.bold),
                      ],
                    ),
                  ),

                  //About
                  SizedBox(
                    height: 30,
                  ),
                  CustomTxt(
                      Title: "About",
                      ColorTxt: aftergrey,
                      FontSizeTxt: 50,
                      FontWeightTxt: FontWeight.bold),

                  //HOUSE-TRAINED
                  SizedBox(
                    height: 30,
                  ),
                  CustomTxt(
                      Title: "HOUSE-TRAINED \nYes",
                      ColorTxt: aftergrey,
                      FontSizeTxt: fontLastText2,
                      FontWeightTxt: FontWeight.normal),

                  //HEALTH
                  SizedBox(
                    height: 30,
                  ),
                  CustomTxt(
                      Title:
                          "HEALTH \nVaccinations up to date, spayed / neutered.",
                      ColorTxt: aftergrey,
                      FontSizeTxt: fontLastText2,
                      FontWeightTxt: FontWeight.normal),

                  //GOOD
                  SizedBox(
                    height: 30,
                  ),
                  CustomTxt(
                      Title: "GOOD IN A HOME WITH Other \ncats.",
                      ColorTxt: aftergrey,
                      FontSizeTxt: fontLastText2,
                      FontWeightTxt: FontWeight.normal),

                  //nChildren
                  SizedBox(
                    height: 30,
                  ),
                  CustomTxt(
                      Title: "PREFERS A HOME WITHOUT \nChildren.",
                      ColorTxt: aftergrey,
                      FontSizeTxt: fontLastText2,
                      FontWeightTxt: FontWeight.normal),

                  //row + alram
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 90,
                    width: double.maxFinite,
                    color: colRowLine,
                    child: Row(
                      children: [
                        //alarm
                        Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Image.asset(
                              "assets/images/icons/Icon ionic-ios-notifications-outline.png",
                              width: 50,
                            )),

                        //txt
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: CustomTxt(
                              Title:
                                  "Petfinder recommends that you should always take reasonable security steps before making adabtion.",
                              ColorTxt: aftergrey,
                              FontSizeTxt: 20,
                              FontWeightTxt: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  //Meet Elsa
                  SizedBox(
                    height: 30,
                  ),
                  CustomTxt(
                      Title: "Meet Elsa",
                      ColorTxt: aftergrey,
                      FontSizeTxt: 50,
                      FontWeightTxt: FontWeight.bold),

                  //Hi
                  SizedBox(
                    height: 30,
                  ),
                  CustomTxt(
                      Title: "Hi",
                      ColorTxt: aftergrey,
                      FontSizeTxt: fontLastText2,
                      FontWeightTxt: FontWeight.normal),

                  SizedBox(
                    height: 30,
                  ),
                  CustomTxt(
                      Title:
                          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore \net dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. \nStet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor \nsit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna \naliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita",
                      ColorTxt: aftergrey,
                      FontSizeTxt: fontLastText2,
                      FontWeightTxt: FontWeight.normal),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTxt(
                      Title:
                          "kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur\n sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. \nAt vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est \nLorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod \ntempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo \nduo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt \nut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet cli",
                      ColorTxt: aftergrey,
                      FontSizeTxt: fontLastText2,
                      FontWeightTxt: FontWeight.normal),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //footer
            Consumer<Provider_Footer>(
                builder: (BuildContext context, value, Widget? child) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: value.Footer_List.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Footerr(
                          email: "${value.Footer_List[index].email}",
                          location: "${value.Footer_List[index].location}",
                          phone: "${value.Footer_List[index].phone}",
                          location2: "${value.Footer_List[index].location2}");
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}
