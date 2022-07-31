import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomDropMenuBtn extends StatefulWidget {

  String selectedValue;

  //List<DropdownMenuItem<String>>  menuItems = [];
  //List<String> menuItems =[];
  //var customList = [];
  String? labelText;

  var BoxWidth;

  CustomDropMenuBtn({
    required this.selectedValue,
    //required this.menuItems,
    required this.BoxWidth,
  });

  /*List<DropdownMenuItem<String>> getDropdownItems() {


    for (String i in menuItems) {
      var newDropdown = DropdownMenuItem(
        child: Text(i),
        value: i,
      );

      menuItems.add(newDropdown);
    }
    return menuItems;
  }*/
  /*List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
    //CustomDropMenuBtn.menu(Txt, ValTxt)
      //DropdownMenuItem(child: Text("Country"),value: "Country"),

      DropdownMenuItem(child: Text("USA"),value: "USA"),
      DropdownMenuItem(child: Text("England"),value: "England"),
      DropdownMenuItem(child: Text("England"),value: "England"),
    ];
    return menuItems;
  }*/
  @override
  State<CustomDropMenuBtn> createState() => _CustomDropMenuBtnState();
}

class _CustomDropMenuBtnState extends State<CustomDropMenuBtn> {
  /*void initState() {
    super.initState();

    widget.customList = List.generate(
      widget.menuItems.length,
          (index) => DropdownMenuItem(
        value: widget.menuItems[index],
        child: Text(
          widget.menuItems[index],
        ),
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      elevation: 18,
      child: Container(
        width: widget.BoxWidth,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            labelText: widget.labelText,
            //helperText: "Country",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: transparent, width: 2),
              borderRadius: BorderRadius.circular(15),
            ),

            border: OutlineInputBorder(
              borderSide: BorderSide(color: transparent, width: 2),
              borderRadius: BorderRadius.circular(15),
            ),
            //focusColor: white,
            //filled: true,
            //fillColor: white,
          ),
          dropdownColor: white,
          value: widget.selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              widget.selectedValue = newValue!;
            });
          },
          items: ['${widget.selectedValue}'].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(
                value,
                style: TextStyle(fontSize: 20),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
