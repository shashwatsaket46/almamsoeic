import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
class loginpage extends StatelessWidget {
  const loginpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "Loginpage",
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
      ),
        textScaleFactor: 3.0,
      ),
      ),

      
    );
  }
}