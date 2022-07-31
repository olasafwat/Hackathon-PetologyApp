import 'dart:convert';

import 'package:flutter/material.dart';

import '../../model/Model_PetNeedHouse.dart';
import '../../model/Model_PetNeeds.dart';
import '../network/EndPoint.dart';
import 'package:http/http.dart' as http;

class Provider_PetNeedHouse with ChangeNotifier
{
  List<Model_PetNeedHouse> PetNeedHouse_List = [];


  Provider_PetNeedHouse()
  {
    GetPetNeedHouse().then((value)
    {
      notifyListeners();
    });
  }

  GetPetNeedHouse() async
  {

    try {
      var url = Uri.parse("${BASE_URL}${GET_PETS}");
      var response = await http.get(url);
      var responsebody = jsonDecode(response.body);
      print(responsebody);

      for (var i in responsebody)
      {
        PetNeedHouse_List.add(Model_PetNeedHouse.fromMap(i));

      }


    }

    catch(e)
    {
      print(e);
      print("Error");


    }

  }
}
