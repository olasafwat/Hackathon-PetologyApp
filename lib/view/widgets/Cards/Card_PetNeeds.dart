import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../screens/ChooseDogsOrCats/ChooseDogsOrCatsScreen.dart';
import '../Buttons/CustomCircleBtn.dart';
import '../Text/CustomTxt.dart';

class Card_PetNeeds extends StatelessWidget {
  String? imageUrl;
  String? title;

  Card_PetNeeds({
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCircleBtn(
          txtBtn: '$title',
          imgBtn: '$imageUrl',
          sizeImg: 110,
          Page: ChooseDogsOrCatsScreen(),
        )
      ],
    );
  }
}
