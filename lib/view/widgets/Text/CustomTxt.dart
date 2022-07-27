import 'package:flutter/material.dart';

class CustomTxt extends StatelessWidget {
  String? Title;
  Color? ColorTxt;
  double? FontSizeTxt;
  var FontWeightTxt=FontWeight.bold;

  CustomTxt({
    required this.Title,
    required this.ColorTxt,
    required this.FontSizeTxt,
    required this.FontWeightTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Text(

      "$Title",
        textAlign: TextAlign.justify,

      style: TextStyle(
          color: ColorTxt,
          fontSize: FontSizeTxt,
          fontWeight: FontWeightTxt,
           ),
    );
  }


}
