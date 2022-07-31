import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../screens/Adaption/AdaptionScreen_HowFeedCat.dart';
import '../../screens/Adaption/AdaptionScreen_HowFeedDog.dart';
import '../../screens/Authentication/Login/LoginScreen.dart';
import '../../screens/Authentication/SignUp/SignUpScreen.dart';
import '../../screens/Home/HomeScreen.dart';
import '../../screens/Request/RequestScreen.dart';
import 'CustomAppBarBtn.dart';
import 'CustomTxtAppBarBtn.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background/Rectangle 11.png'),
                fit: BoxFit.cover)),
      ),
      leading: Container(
        //margin: EdgeInsets.only(top: 20),
        //width: 600,
        child: Image.asset(
          "assets/images/Logo/logo.png",
        ),
      ),
      leadingWidth: 300,
      actions: [
        //About Us
        Container(
            margin: EdgeInsets.only(top: 20),
            child: CustomTxtAppBarBtn(
              Txt: 'About Us',
              Page: HomeScreen(),
              sizeBtn: fontAppBar,
            )),

        //Categories
        Container(
          margin: EdgeInsets.only(top: 20),
          child: CustomTxtAppBarBtn(
              Txt: 'Adaptaion',
              Page: AdaptionScreen_HowFeedDog(),
              sizeBtn: fontAppBar),
        ),

        //Request
        Container(
          margin: EdgeInsets.only(top: 20),
          child: CustomTxtAppBarBtn(
              Txt: 'Request',
              Page: RequestScreen(),
              sizeBtn: fontAppBar),
        ),

        //Services
        Container(
          margin: EdgeInsets.only(top: 20,right: 50),
          child: CustomTxtAppBarBtn(
              Txt: 'Services',
              Page: HomeScreen(),
              sizeBtn: fontAppBar),
        ),

        //SignUp
        Container(
          margin: EdgeInsets.only(top: 20,right: 20),
          child: CustomAppBarBtn(
            Txt: 'Sign up',
            Page: SignUpScreen(),
          ),
        ),

        //Login
        Container(
            margin: EdgeInsets.only(top: 20,right: 50),
            child: CustomAppBarBtn(
                Txt: 'Login',
                Page: LoginScreen())),
      ],
    );
  }
}
