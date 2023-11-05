import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Container2 extends StatelessWidget {
  const Container2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          "Adam bell",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 2,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          child: Text(
            "Hey, am a conatiner Apologies for the late message... Was inquiring, does anyone "
            "have the recording for session 20 (room) and session 26 (continuation of navigation)",
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
            ),
          ),
          // color: Colors.greenAccent,
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(left: 12, top: 12, right: 12,bottom: 16),
          margin: EdgeInsets.all(25),
           width: 300,
           height: 300,
          decoration: BoxDecoration(
             color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(1000),
            border: Border.all(
              color: Colors.yellow,
              width: 30,

            )
          ),
        ),
      ),
    );
  }
}
