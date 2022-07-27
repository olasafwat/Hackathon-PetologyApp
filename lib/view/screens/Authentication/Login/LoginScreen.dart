import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:footer/footer.dart';

import '../../../../constants.dart';

import '../../../widgets/Buttons/CustomAppBarBtn.dart';
import '../../../widgets/Buttons/CustomAuthBtn.dart';
import '../../../widgets/Buttons/CustomBtn.dart';
import '../../../widgets/Buttons/CustomTxtBtn.dart';
import '../../../widgets/Footer/Footerr.dart';
import '../../../widgets/Text/CustomTxt.dart';
import '../../../widgets/Text/CustomTxtFormField.dart';
import '../../AboutUs/AboutUsScreen.dart';
import '../../Categories/CategoriesScreen.dart';
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
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              //img
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 90),
                  child: SvgPicture.asset(
                    "assets/images/Eye/Dog paw-cuate.svg",
                    width: 250,
                    height: 250,
                  ),
                ),
              ),

              //border
              Container(
                margin: EdgeInsets.only(bottom: 100, left: 420, right: 420,top:330 ),
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
                    CustomBtn(TxtBtn: 'Login', TxtColrBtn: colrTextBtn, ColrBtn: brown,),

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
                            SizeImg: 42),

                        SizedBox(
                          width: 30,
                        ),
                        //google
                        CustomAuthBtn(
                            ImgLogo: 'assets/images/icons/google.png',
                            Title: 'Google',
                            ColorBtn: white,
                            ColorTxt: black,
                            SizeImg: 30),
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
                                return LoginScreen();
                              }));
                            },
                            child: CustomTxt(
                              Title: "sign up",
                              ColorTxt: aftergray,
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


            ],
          ),

        ),
      ),
    );
  }
}
