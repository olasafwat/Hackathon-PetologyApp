import 'package:flutter/material.dart';




class CustomTxtAppBarBtn extends StatelessWidget {
  String? Txt;
  double? sizeBtn;
  StatefulWidget Page;


  CustomTxtAppBarBtn({
    required this.Txt,
    required this.Page,
    required this.sizeBtn,
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
    return TextButton(
      onPressed: () {
        return NavigatorTo(context);
      },
      child: Text(
        "$Txt",
        style: TextStyle(
            color: Colors.white,
            fontSize: sizeBtn),
      ),
    );
  }


}
