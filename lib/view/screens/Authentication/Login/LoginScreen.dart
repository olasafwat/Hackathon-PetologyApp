import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:footer/footer.dart';
import 'package:mouse_parallax/mouse_parallax.dart';
import 'package:provider/provider.dart';

import '../../../../constants.dart';

import '../../../../controller/provider/Provider_Footer.dart';
import '../../../widgets/AppBar/CustomAppBarBtn.dart';
import '../../../widgets/Buttons/CustomAuthBtn.dart';
import '../../../widgets/Buttons/CustomBtn.dart';
import '../../../widgets/AppBar/CustomTxtAppBarBtn.dart';
import '../../../widgets/AppBar/CustomAppBar.dart';
import '../../../widgets/Footer/Footerr.dart';
import '../../../widgets/Text/CustomTxt.dart';
import '../../../widgets/Text/CustomTxtFormField.dart';
import '../../Adaption/AdaptionScreen_HowFeedCat.dart';
import '../../Home/HomeScreen.dart';
import '../../Request/RequestScreen.dart';
import '../../Services/ServicesScreen.dart';
import '../SignUp/SignUpScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: CustomAppBar()),

      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              //img without eyes
              Center(
                child: Container(
                  //margin: EdgeInsets.only(top: 10),
                  child: Image.asset(
                    "assets/images/Eye/Dog_paw-cuate1.png",
                    width: 400,
                    height: 400,
                  ),
                ),
              ),


              //eyes
              Center(
                child: Container(
                  height: 320,
                  margin: EdgeInsets.only(top: 33,left: 582),
                  child: ParallaxStack(
                    layers: [
                      ParallaxLayer(
                        //enable3d: true,
                        //yRotation: 0.1,zRotation:0.1,xRotation: 0.10,
                        yOffset: 10,
                        xOffset: 10 ,
                        child:Image.asset(
                        "assets/images/Eye/eyes.png",
                       // width: 350,
                       // height: 350,
                      ),)
                    ],
                  ),
                 /* child: Image.asset(
                    "assets/images/Eye/eyes.png",
                    width: 350,
                    height: 350,
                  ),*/

                ),
              ),

              //border
              Container(
                margin: EdgeInsets.only(bottom: 100, left: 420, right: 420,top:360 ),
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: black, width: 2),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Title
                    SizedBox(height: 18),
                    CustomTxt(
                      Title: 'Login',
                      ColorTxt: brown,
                      FontSizeTxt: fontLoginText,
                      FontWeightTxt: FontWeight.bold,
                    ),

                    //Email
                    SizedBox(height: 18),
                    CustomTxtFormField(
                      labelText: 'Email',
                      BoxWidth: boxWidthTxtField,
                    ),
                    SizedBox(height: 18),

                    //Password
                    CustomTxtFormField(
                      labelText: 'Password',
                      BoxWidth: boxWidthTxtField,
                    ),
                    SizedBox(height: 18),

                    //Button Login
                    CustomBtn(TxtBtn: 'Login', TxtColrBtn: colrTextBtn, ColrBtn: brown, Page: HomeScreen(),),

                    //Forget Password
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 350),
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 18),

                    //line + or
                    Row(children: const [
                      Expanded(
                          child:
                              Divider(color: brown, thickness: 2, indent: 100)),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Text(
                          "Or",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        color: brown,
                        thickness: 2,
                        endIndent: 100,
                      )),
                    ]),

                    //facebook +google
                    SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //facebook
                        CustomAuthBtn(
                            ImgLogo: 'assets/images/icons/facebook.png',
                            Title: 'Facebook',
                            ColorBtn: blue,
                            ColorTxt: white,
                            SizeImg: 42,
                          Page: HomeScreen(),),

                        SizedBox(
                          width: 30,
                        ),
                        //google
                        CustomAuthBtn(
                            ImgLogo: 'assets/images/icons/google.png',
                            Title: 'Google',
                            ColorBtn: white,
                            ColorTxt: black,
                            SizeImg: 30,
                            Page: HomeScreen()),

                      ],
                    ),

                    //didn't have account
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTxt(
                            Title: "Didn't have an account?",
                            ColorTxt: gray,
                            FontSizeTxt: fontSmallText,
                            FontWeightTxt: FontWeight.bold,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return SignUpScreen();
                              }));
                            },
                            child: CustomTxt(
                              Title: "sign up",
                              ColorTxt: aftergrey,
                              FontSizeTxt: fontSmallText,
                              FontWeightTxt: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),

              ),

              //footer
              Padding(
                padding: const EdgeInsets.only(top:1050),
                child: Consumer<Provider_Footer>(
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
              )


            ],
          ),

        ),
      ),
    );
  }
}
