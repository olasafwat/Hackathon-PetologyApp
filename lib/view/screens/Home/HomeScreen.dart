import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hackathon_flutter_petology/view/screens/Adaption/AdaptionGeneralScreen.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../controller/provider/Provider_Footer.dart';
import '../../../controller/provider/Provider_HomeScreen_FS.dart';
import '../../../controller/provider/Provider_HomeScreen_SS.dart';
import '../../../controller/provider/Provider_PetNeeds.dart';
import '../../widgets/AppBar/CustomAppBarBtn.dart';
import '../../widgets/Buttons/CustomArrowBtn.dart';
import '../../widgets/Buttons/CustomBorderBtn.dart';
import '../../widgets/Buttons/CustomCircleBtn.dart';
import '../../widgets/Buttons/CustomHoverBtn.dart';
import '../../widgets/Buttons/CustomSwipeBtn.dart';
import '../../widgets/AppBar/CustomTxtAppBarBtn.dart';

import '../../widgets/AppBar/CustomAppBar.dart';
import '../../widgets/Cards/Card_HomeScreen_FS.dart';
import '../../widgets/Cards/Card_HomeScreen_SS.dart';
import '../../widgets/Cards/Card_PetNeeds.dart';
import '../../widgets/Footer/Footerr.dart';
import '../../widgets/Footer/FooterForm.dart';
import '../../widgets/Text/CustomTxt.dart';
import '../Adaption/AdaptionInfoScreen.dart';
import '../Adaption/AdaptionScreen_HowFeedCat.dart';
import '../Authentication/Login/LoginScreen.dart';
import 'dart:math' as math;

import '../Authentication/SignUp/SignUpScreen.dart';
import '../ChooseDogsOrCats/ChooseDogsOrCatsScreen.dart';
import '../Help/HelpFriendScreen.dart';
import '../Request/RequestScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: brown,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0), child: CustomAppBar()),

      body: Container(
        decoration: BoxDecoration(
            image: new DecorationImage(
                image: AssetImage("assets/images/background/Rectangle 11.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Section 1
              Consumer<Provider_HomeScreen_FS>(
                  builder: (BuildContext context, value, Widget? child) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: value.FirstSection_List.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card_HomeScreen_FS(
                        title: "${value.FirstSection_List[index].title}",
                        body: "${value.FirstSection_List[index].body}");
                  },
                );
              }),

              //Section 2
              Consumer<Provider_HomeScreen_SS>(
                  builder: (BuildContext context, value, Widget? child) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: value.SceondSection_List.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card_HomeScreen_SS(
                        title: "${value.SceondSection_List[index].title}",
                        body: "${value.SceondSection_List[index].body}");
                  },
                );
              }),

              //Section 3
              Container(
                color: lightblue,
                height: 600,
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
                                      "assets/images/background/Icon material-pets.png",
                                      color: colrTextBtn,
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
                                        Page: AdaptionGeneralScreen(),
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
                                          colBtn: lightblue,
                                          thicknessBorder: 1,
                                          txtBtn: "Cats",
                                          colrTxtBtn: aftergrey,
                                          fontSizeBtn: fontLastText2,
                                          Page: AdaptionGeneralScreen()),
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

              //Section 4
              Container(
                color: white,
                height: 1000,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        // img leg top
                        Container(
                            margin: EdgeInsets.only(top: 60, left: 480),
                            child: Transform(
                                transform: Matrix4.rotationY(math.pi),
                                child: Image.asset(
                                  "assets/images/background/Icon material-pets.png",
                                  color: colrTextBtn,
                                  width: 85,
                                ))),
                        //title
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: CustomTxt(
                            Title: '  Our friends who \nlooking for a house',
                            ColorTxt: black,
                            FontSizeTxt: fontLastTitle,
                            FontWeightTxt: FontWeight.bold,
                          ),
                        ),

                        SizedBox(
                          height: 18,
                        ),

                        //btns
                        Row(
                          children: [
                            //btn swipe right
                            CustomSwipeBtn(
                              textDirection: TextDirection.rtl,
                            ),

                            //cat btn 1
                            Container(
                              margin: EdgeInsets.only(left: 70),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  //hover btn
                                  Container(
                                    margin: const EdgeInsets.only(top: 20),
                                    child: CustomHoverBtn(
                                        widthBtn: 340,
                                        heightBtn: 500,
                                        hoverColBtn: white,
                                        colBtn: white,
                                        thicknessBorder: 3,
                                        txtBtn: "Caty",
                                        colrTxtBtn: aftergrey,
                                        fontSizeBtn: fontLoginText,
                                        Page: AdaptionInfoScreen()),
                                  ),

                                  //img
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 190),
                                    child: Image.asset(
                                      "assets/images/pic-aboutus22.png",
                                      height: 260,
                                    ),
                                  ),

                                  //btn read more
                                  Container(
                                    margin: EdgeInsets.only(top: 350),
                                    child: ButtonTheme(
                                      minWidth: 250,
                                      height: 80,
                                      child: CustomBorderBtn(
                                        colBtn: white,
                                        thickness: 3,
                                        colThickness: colrTextBtn,
                                        colTxt: aftergrey,
                                        Page: AdaptionInfoScreen(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 65,
                            ),

                            //btn 2
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                //hover btn
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: CustomHoverBtn(
                                      widthBtn: 340,
                                      heightBtn: 500,
                                      hoverColBtn: white,
                                      colBtn: white,
                                      thicknessBorder: 3,
                                      txtBtn: "Elsa",
                                      colrTxtBtn: aftergrey,
                                      fontSizeBtn: fontLoginText,
                                      Page: AdaptionInfoScreen()),
                                ),

                                //img
                                Container(
                                  margin: const EdgeInsets.only(bottom: 200),
                                  child: Image.asset(
                                    "assets/images/pic-aboutus2.png",
                                    height: 380,
                                  ),
                                ),

                                //btn read more
                                Container(
                                  margin: EdgeInsets.only(top: 350),
                                  child: ButtonTheme(
                                    minWidth: 250,
                                    height: 80,
                                    child: CustomBorderBtn(
                                        colBtn: white,
                                        thickness: 3,
                                        colThickness: colrTextBtn,
                                        colTxt: aftergrey,
                                        Page: AdaptionInfoScreen()),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 65,
                            ),

                            //btn 3
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                //hover btn
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: CustomHoverBtn(
                                      widthBtn: 340,
                                      heightBtn: 500,
                                      hoverColBtn: white,
                                      colBtn: white,
                                      thicknessBorder: 3,
                                      txtBtn: "Doby",
                                      colrTxtBtn: aftergrey,
                                      fontSizeBtn: fontLoginText,
                                      Page: AdaptionInfoScreen()),
                                ),

                                //img
                                Container(
                                  margin: const EdgeInsets.only(bottom: 200),
                                  child: Image.asset(
                                    "assets/images/pic-aboutus3.png",
                                    height: 380,
                                  ),
                                ),

                                //btn read more
                                Container(
                                  margin: EdgeInsets.only(top: 350),
                                  child: ButtonTheme(
                                    minWidth: 250,
                                    height: 80,
                                    child: CustomBorderBtn(
                                        colBtn: white,
                                        thickness: 3,
                                        colThickness: colrTextBtn,
                                        colTxt: aftergrey,
                                        Page: AdaptionInfoScreen()),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 65,
                            ),

                            //btn swipe left
                            CustomSwipeBtn(
                              textDirection: TextDirection.ltr,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),

                        //btn show more
                        CustomArrowBtn(
                            colBtn: aftergrey,
                            txtBtn: "Show more",
                            colTxtBtn: colrTextBtn,
                            fontSize: fontBtn,
                            colIconArrow: colrTextBtn,
                            Page: ChooseDogsOrCatsScreen()),
                      ],
                    )
                  ],
                ),
              ),

              //Section 5
              Container(
                color: lightblue,
                height: 900,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          //title
                          Padding(
                            padding: const EdgeInsets.only(top: 90),
                            child: CustomTxt(
                              Title:
                                  'How to take care of \n       your friends? ',
                              ColorTxt: black,
                              FontSizeTxt: fontLastTitle,
                              FontWeightTxt: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 100,
                          ),

                          Container(
                            margin: EdgeInsets.only(left: 80),
                            child: Consumer<Provider_PetNeeds>(
                                builder: (BuildContext context, value, Widget? child) {
                              return MasonryGridView.count(
                                crossAxisCount: 4,
                                shrinkWrap: true,
                                itemCount: value.PetNeeds_List.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Card_PetNeeds(
                                        title: '${value.PetNeeds_List[index].title}',
                                        imageUrl: '${value.PetNeeds_List[index].imageUrl}'),
                                  );
                                },
                              );
                            }),
                          ),

                          /*Consumer<PetNeeds_Provider>(
                              builder: (BuildContext context, value, Widget? child) {
                                return MasonryGridView.count(
                                  shrinkWrap: true,
                                  itemCount: value.PetNeed_List.length,
                                  crossAxisCount: 4,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Card_PetNeeds(
                                      title: '${value.PetNeed_List[index].title}',
                                      imageUrl: '${value.PetNeed_List[index].imageUrl}',
                                    );
                                  },

                                  //scrollDirection: Axis.horizontal,


                            */ /*shrinkWrap: true,
                  itemCount: value.PetNeed_List.length,
                  itemBuilder: (BuildContext context, int index) {
                      return Card_PetNeeds(
                        title: '${value.PetNeed_List[index].title}',
                        imageUrl: '${value.PetNeed_List[index].imageUrl}',
                      );
                  },*/ /*

                                );


                              })*/
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //Footer
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
      ),
    );
  }
}
