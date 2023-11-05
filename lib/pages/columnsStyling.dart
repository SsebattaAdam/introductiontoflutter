import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Columns2 extends StatelessWidget {
  const Columns2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "collums",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 2,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 5, color: Colors.green)),
            width: double.infinity,
            height: 50,
            //  color: Colors.yellow,
          ),
          Container(
            width: 300,
            height: 50,
            color: Colors.blue,
          ),
          Container(
            width: 300,
            height: 50,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
