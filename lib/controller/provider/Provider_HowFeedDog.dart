import 'dart:convert';

import 'package:flutter/material.dart';

import '../../model/Model_HowFeedCat.dart';
import '../../model/Model_HowFeedDog.dart';
import '../network/EndPoint.dart';
import 'package:http/http.dart' as http;

class Provider_HowFeedDog with ChangeNotifier
{
  List<Model_HowFeedDog> HowFeedDog_List = [];


  Provider_HowFeedDog()
  {
    GetHowFeedDog().then((value)
    {
      notifyListeners();
    });
  }

  GetHowFeedDog() async
  {

    try {
      var url = Uri.parse("${BASE_URL}${HOW_FEED_YOUR_DOG}");
      var response = await http.get(url);
      var responsebody = jsonDecode(response.body);
      //print(responsebody);


      HowFeedDog_List.add(Model_HowFeedDog.fromMap(responsebody));



    }

    catch(e)
    {
      print(e);
      print("Error");


    }

  }
}
