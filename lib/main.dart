import 'package:flutter/material.dart';
import 'package:hackathon_flutter_petology/controller/provider/Provider_PetNeeds.dart';
import 'package:hackathon_flutter_petology/view/screens/Authentication/Login/LoginScreen.dart';
import 'package:provider/provider.dart';

import 'controller/provider/Provider_Footer.dart';
import 'controller/provider/Provider_HomeScreen_FS.dart';
import 'controller/provider/Provider_HomeScreen_SS.dart';
import 'controller/provider/Provider_HowFeedCat.dart';
import 'controller/provider/Provider_HowFeedDog.dart';
import 'view/screens/Adaption/AdaptionScreen_HowFeedCat.dart';
import 'view/screens/Adaption/AdaptionGeneralScreen.dart';
import 'view/screens/Adaption/AdaptionInfoScreen.dart';
import 'view/screens/Authentication/SignUp/SignUpScreen.dart';
import 'view/screens/ChooseDogsOrCats/ChooseDogsOrCatsScreen.dart';
import 'view/screens/Help/HelpFriendScreen.dart';
import 'view/screens/Home/HomeScreen.dart';
import 'view/screens/Request/RequestScreen.dart';


void main() {
  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (_)=> Provider_HomeScreen_FS()),
        ChangeNotifierProvider(create: (_)=> Provider_HomeScreen_SS()),
        ChangeNotifierProvider(create: (_)=> Provider_PetNeeds()),
        ChangeNotifierProvider(create: (_)=> Provider_Footer()),
        ChangeNotifierProvider(create: (_)=> Provider_HowFeedCat()),
        ChangeNotifierProvider(create: (_)=> Provider_HowFeedDog()),


      ],

          child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petology',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
