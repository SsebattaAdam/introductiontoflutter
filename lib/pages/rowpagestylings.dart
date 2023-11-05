import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rowpagestyling extends StatelessWidget {
  const Rowpagestyling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "rows page",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 2,
        backgroundColor: Colors.blue,
      ),
      body: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                border: Border.all(
                  color: Colors.yellow,
                  width: 7,
                )),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                border: Border.all(
                  color: Colors.lightGreenAccent,
                  width: 7,
                )),
          ),
        ],
      ),
    );
  }
}
