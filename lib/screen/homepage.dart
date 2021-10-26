import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);
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
          child: Text("lodddfdfsDFsd $days and $s"),
        ),
      ),
    );
  }
}
