import 'package:flutter/material.dart';

import '../../screens/Authentication/Login/LoginScreen.dart';


class CustomTxtBtn extends StatelessWidget {
  String? Txt;

  CustomTxtBtn({
    required this.Txt,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
              return LoginScreen();
            }));
      },
      child: Text(
        "$Txt",
        style: TextStyle(color: Colors.white),
      ),
    );
  }


}
