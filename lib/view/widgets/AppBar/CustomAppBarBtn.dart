import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../screens/Authentication/SignUp/SignUpScreen.dart';



class CustomAppBarBtn extends StatelessWidget {
  String? Txt;
  StatefulWidget Page;

  CustomAppBarBtn({
    required this.Txt,
    required this.Page,
  });

  //TODO Function Navigate to Pages
  void NavigatorTo(BuildContext context)
  {
    Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context) {
          return Page;
        }));

  }

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 50,
      width: 120,

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(240, 60),
          primary: colAppBarBtn,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(color: white)),

        ),
        onPressed: () {
          return NavigatorTo(context);
        },
        child: Text(
          "$Txt",
          style: TextStyle(
              color: white,
              fontSize: fontAppBar,
              fontWeight: FontWeight.bold),
        ),
      ),


    );
  }


}
