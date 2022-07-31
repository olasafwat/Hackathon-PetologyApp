import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../controller/provider/Provider_Footer.dart';
import '../Footer/Footerr.dart';
import '../Text/CustomTxt.dart';

class Card_HowFeedPet extends StatelessWidget {
  String? title;
  String? body;

  Card_HowFeedPet({
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //title
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 70),
              child: CustomTxt(
                  Title: "$title",
                  ColorTxt: aftergrey,
                  FontSizeTxt: fontLastTitle,
                  FontWeightTxt: FontWeight.bold),
            ),

            //body
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 70),
              child: CustomTxt(
                  Title:
                  "$body",
                  ColorTxt: brown,
                  FontSizeTxt: fontSubTitle,
                  FontWeightTxt: FontWeight.normal),
            ),



            SizedBox(
              height: 40,
            ),

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
