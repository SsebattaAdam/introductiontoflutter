import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stackpagestyling extends StatelessWidget {
  const Stackpagestyling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "stack page",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 2,
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              margin: EdgeInsets.only(left: 15, top: 15),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
              margin: EdgeInsets.only(left: 30, top: 30),
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(left: 60, top: 60),
              color: Colors.blue,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: Stack(
                  children: [
                    Icon(Icons.notification_add,
                      size:60 ,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
