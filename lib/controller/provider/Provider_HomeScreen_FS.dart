import 'dart:convert';

import 'package:flutter/material.dart';

import '../../model/Model_HomeScreen_FS.dart';
import '../network/EndPoint.dart';
import 'package:http/http.dart' as http;

class Provider_HomeScreen_FS with ChangeNotifier
{
  List<Model_HomeScreen_FS> FirstSection_List = [];


  Provider_HomeScreen_FS()
  {
    GetFirstSection().then((value)
    {
      notifyListeners();
    });
  }

  GetFirstSection() async
  {

    try {
      var url = Uri.parse("${BASE_URL}${HOMEPAGE_FIRST_SECTION}");
      var response = await http.get(url);
      var responsebody = jsonDecode(response.body);
      print(responsebody);


        FirstSection_List.add(Model_HomeScreen_FS.fromMap(responsebody));



    }

      catch(e)
      {
        print(e);
        print("Error");


      }

    }
}
