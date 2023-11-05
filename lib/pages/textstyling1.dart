import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textstyling extends StatelessWidget {
  const Textstyling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second text"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Text(
          "hey there",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 26,
            fontWeight: FontWeight.w100,
            backgroundColor: Colors.amber,
            wordSpacing: 10,
          ),
        ),
      ),
    );
  }
}
