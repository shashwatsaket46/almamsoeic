import 'package:bitso/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(bitso());
}

class bitso extends StatelessWidget {
  const bitso({Key? key}) : super(key: key);
 
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }
}
