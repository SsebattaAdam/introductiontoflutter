import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class dynamiclistScreen extends StatefulWidget {
  const dynamiclistScreen({super.key});

  @override
  State<dynamiclistScreen> createState() => _dynamiclistScreenState();
}

class _dynamiclistScreenState extends State<dynamiclistScreen> {
  int answer = 0;
  int valu1 = 0;
  int valu2 = 0;
  String sign = "";
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dynamic screen"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              FormBuilderTextField(
                name: "value1",
                onChanged: (value) {
                  valu1 = int.parse(value.toString());
                },
                keyboardType: TextInputType.number,

                style: TextStyle(color: Colors.blue),
                decoration: InputDecoration(
                  labelText: "value1",
                  labelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FormBuilderTextField(
                name: "value2",
                onChanged: (value) {
                  valu2 = int.parse(value.toString());
                  sign = "+";                },
                keyboardType: TextInputType.number,

                style: TextStyle(color: Colors.blue),
                decoration: InputDecoration(
                  labelText: "value2",
                  labelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              Text("${valu1} ${sign} ${valu2} = ${answer}", style: TextStyle(fontSize: 25)),
              SizedBox(
                height: 20,
              ),
              Row(children: [
                Expanded(
                    child: MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    answer = valu1 + valu2;
                    sign = "+";
                    setState(() {});
                  },
                  child: const Icon(Icons.add),
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: MaterialButton(
                  color: Colors.lightGreenAccent,
                  onPressed: () {
                   answer = valu1 - valu2;
                   sign = "-";
                    setState(() {});
                  },
                  child: const Icon(Icons.remove),
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: MaterialButton(
                      color: Colors.lightGreenAccent,
                      onPressed: () {
                        if(valu2 !=0) {
                        
                          answer = int.parse((valu1/valu2).toString());
                        }
                        setState(() {});
                      },
                      child: Text("/"),
                    )),
                SizedBox(width: 20,),
                Expanded(
                    child: MaterialButton(
                      color: Colors.lightGreenAccent,
                      onPressed: () {
                        if(valu2 !=0) {

                          answer = valu1   * valu2;
                          sign = "*";
                        }
                        setState(() {});
                      },
                      child: Text("*"),
                    )),
              ])
            ])));
  }
}
