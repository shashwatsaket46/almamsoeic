import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);
  final int days = 30;
  final String s = "Ramu";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BITSO"),
      ),
      body: Center(
        child: Container(
          child: Text("lodddddddd $days and $s"),
        ),
      ),
    );
  }
}
