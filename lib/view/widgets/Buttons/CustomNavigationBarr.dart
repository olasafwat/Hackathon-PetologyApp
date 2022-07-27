import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabBar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import '../../screens/Authentication/Login/LoginScreen.dart';
import '../../screens/Authentication/SignUp/SignUpScreen.dart';



class CustomNavigationBarr extends StatefulWidget {
  const CustomNavigationBarr({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBarr> createState() => _CustomNavigationBarrState();
}

class _CustomNavigationBarrState extends State<CustomNavigationBarr>   with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: brown,
        leading: Image.asset(
          "assets/images/Logo/logo.png",
        ),
        leadingWidth: 300,

        actions: [
          //About Us
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return LoginScreen();
                  }));
            },
            child: Text(
              "About Us",
              style: TextStyle(color: Colors.white),
            ),
          ),

          //Categories
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return LoginScreen();
                  }));
            },
            child: Text(
              "Categories",
              style: TextStyle(color: Colors.white),
            ),
          ),

          //Request
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return LoginScreen();
                  }));
            },
            child: Text(
              "Services",
              style: TextStyle(color: Colors.white),
            ),
          ),

          //Services
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return LoginScreen();
                  }));
            },
            child: Text(
              "Request",
              style: TextStyle(color: Colors.white),
            ),
          ),

          //SignUp
          Container(
            padding: EdgeInsets.all(10),
            height: 20,
            width: 120,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(240, 60),
                primary: brown,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: white)),
                //backgroundColor: Colors.transparent
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return SignUpScreen();
                    }));
              },
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: white, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),

            /*FloatingActionButton(
              hoverColor: white,
              backgroundColor: brown,
              splashColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: white)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return LoginScreen();
                }));
              },
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            ),*/
          ),

          //Login
          Container(
            padding: EdgeInsets.all(10),
            height: 20,
            width: 120,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(240, 60),
                primary: brown,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: white)),
                //backgroundColor: Colors.transparent
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return LoginScreen();
                    }));
              },
              child: Text(
                "Login",
                style: TextStyle(
                    color: white, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),

            /*FloatingActionButton(
              hoverColor: white,
              backgroundColor: brown,
              splashColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: white)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return LoginScreen();
                }));
              },
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            ),*/
          ),
        ],
      ),
    );
  }
}
