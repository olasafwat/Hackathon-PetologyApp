import 'dart:convert';

import 'package:flutter/material.dart';

import '../../model/Model_PetNeeds.dart';
import '../network/EndPoint.dart';
import 'package:http/http.dart' as http;

class Provider_PetNeeds with ChangeNotifier
{
  List<Model_PetNeeds> PetNeeds_List = [];


  Provider_PetNeeds()
  {
    GetPetNeeds().then((value)
    {
      notifyListeners();
    });
  }

  GetPetNeeds() async
  {

    try {
      var url = Uri.parse("${BASE_URL}${PET_NEEDS}");
      var response = await http.get(url);
      var responsebody = jsonDecode(response.body);
      //print(responsebody);

      for (var i in responsebody)
        {
          PetNeeds_List.add(Model_PetNeeds.fromMap(i));

        }


    }

    catch(e)
    {
      print(e);
      print("Error");


    }

  }
}
