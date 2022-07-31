import 'dart:convert';

import 'package:flutter/material.dart';

import '../../model/Model_HomeScreen_SS.dart';
import '../network/EndPoint.dart';
import 'package:http/http.dart' as http;

class Provider_HomeScreen_SS with ChangeNotifier
{
  List<Model_HomeScreen_SS> SceondSection_List = [];


  Provider_HomeScreen_SS()
  {
    GetSecondSection().then((value)
    {
      notifyListeners();
    });
  }

  GetSecondSection() async
  {

    try {
      var url = Uri.parse("${BASE_URL}${HOMEPAGE_SECOND_SECTION}");
      var response = await http.get(url);
      var responsebody = jsonDecode(response.body);
      //print(responsebody);


      SceondSection_List.add(Model_HomeScreen_SS.fromMap(responsebody));



    }

    catch(e)
    {
      print(e);
      print("Error");


    }

  }
}
