import 'dart:convert';

import 'package:flutter/material.dart';

import '../../model/Model_HowFeedCat.dart';
import '../network/EndPoint.dart';
import 'package:http/http.dart' as http;

class Provider_HowFeedCat with ChangeNotifier
{
  List<Model_HowFeedCat> HowFeedCat_List = [];


  Provider_HowFeedCat()
  {
    GetHowFeedCat().then((value)
    {
      notifyListeners();
    });
  }

  GetHowFeedCat() async
  {

    try {
      var url = Uri.parse("${BASE_URL}${HOW_FEED_YOUR_CAT}");
      var response = await http.get(url);
      var responsebody = jsonDecode(response.body);
      //print(responsebody);


      HowFeedCat_List.add(Model_HowFeedCat.fromMap(responsebody));



    }

    catch(e)
    {
      print(e);
      print("Error");


    }

  }
}
