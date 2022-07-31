import 'dart:convert';

import 'package:flutter/material.dart';

import '../../model/Model_Footer.dart';
import '../network/EndPoint.dart';
import 'package:http/http.dart' as http;

class Provider_Footer with ChangeNotifier
{
  List<Model_Footer> Footer_List = [];


  Provider_Footer()
  {
    GetFooter().then((value)
    {
      notifyListeners();
    });
  }

  GetFooter() async
  {

    try {
      var url = Uri.parse("${BASE_URL}${FOOTER}");
      var response = await http.get(url);
      var responsebody = jsonDecode(response.body);
      print(responsebody);

      Footer_List.add(Model_Footer.fromMap(responsebody));

    }

    catch(e)
    {
      print(e);
      print("Error");


    }

  }
}
