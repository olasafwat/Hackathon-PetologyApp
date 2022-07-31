import 'package:flutter/material.dart';
import 'package:hackathon_flutter_petology/view/widgets/Text/CustomTxt.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../controller/provider/Provider_Footer.dart';
import '../../../controller/provider/Provider_HowFeedCat.dart';
import '../../widgets/BackgroundApdation/BackgroundApdation.dart';
import '../../widgets/AppBar/CustomAppBarBtn.dart';
import '../../widgets/AppBar/CustomTxtAppBarBtn.dart';
import '../../widgets/AppBar/CustomAppBar.dart';
import '../../widgets/Cards/Card_HowFeedPet.dart';
import '../../widgets/Footer/Footerr.dart';
import '../Authentication/Login/LoginScreen.dart';
import '../Authentication/SignUp/SignUpScreen.dart';
import '../Home/HomeScreen.dart';
import '../Request/RequestScreen.dart';

class AdaptionScreen_HowFeedCat extends StatefulWidget {
  const AdaptionScreen_HowFeedCat({Key? key}) : super(key: key);

  @override
  State<AdaptionScreen_HowFeedCat> createState() => _AdaptionScreen_HowFeedCatState();
}

class _AdaptionScreen_HowFeedCatState extends State<AdaptionScreen_HowFeedCat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: CustomAppBar()),

      body: SingleChildScrollView(
        child: Column(
          children: [
            //background
            Stack(
              children: [
                //pattern background
                Container(
                  height: 700,
                  //color: brown,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: AssetImage(
                              "assets/images/background/Rectangle 11.png"),
                          fit: BoxFit.cover)),
                ),

                //bones background
                Container(
                  margin: EdgeInsets.only(top: 120),
                  height: 400,
                  //color: brown,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: AssetImage(
                              "assets/images/background/background2.png"),
                          fit: BoxFit.contain)),
                ),

                //bowl background
                Container(
                  margin: EdgeInsets.only(top: 500),
                  height: 200,
                  //color: brown,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: AssetImage(
                              "assets/images/299-removebg-preview.png"),
                          fit: BoxFit.contain)),
                ),
              ],
            ),
            Consumer<Provider_HowFeedCat>(
              builder: (BuildContext context, value, Widget? child) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: value.HowFeedCat_List.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card_HowFeedPet(
                      title: '${value.HowFeedCat_List[index].title}',
                      body: '${value.HowFeedCat_List[index].body}',
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
