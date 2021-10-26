import 'package:bitso/screen/homepage.dart';
import 'package:bitso/screen/loginpage.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(bitso());
}

class bitso extends StatelessWidget {
  const bitso({Key? key}) : super(key: key);
 
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   //   home: homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.light,
      ),
      initialRoute: "/home",
      routes: {
        "/":(context)=>loginpage(),
        "/home":(context)=>homepage(),
      }
    );
  }
}
