import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/pages/dynamic_listScreen.dart';
import 'package:untitled/pages/simpleCalculator.dart';
import 'package:untitled/pages/statefulWidget.dart';
import 'package:untitled/pages/textstyling1.dart';
import 'package:untitled/pages/containerstyling.dart';

import 'TextFieldpage.dart';
import 'TextInputStlyingpage.dart';
import 'columnsStyling.dart';
import 'flexpage.dart';
import 'formvalidatorpage.dart';
import 'rowpagestylings.dart';
import 'stackpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "hey there",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
          child: ListView(
        children: [
          ListTile(
            title: Text("Dynamic list screen"),
            subtitle: Text("Dynamic"),
            trailing: Icon(Icons.list),
            leading: Icon(Icons.list_alt),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => dynamiclistScreen()));
            },
          ),

          ListTile(
            title: Text("simple calculator"),
            subtitle: Text("calculator"),
            trailing: Icon(Icons.calculate),
            leading: Icon(Icons.calculate_sharp),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => simpleCalculator()));
            },
          ),
          ListTile(
            title: Text("introduction to statfull widget"),
            subtitle: Text("stateful widgest"),
            trailing: Icon(Icons.refresh),
            leading: Icon(Icons.start),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => statefullwidgetscreen()));
            },
          ),

          ListTile(
            title: Text("form builder validator styling"),
            subtitle: Text("form builder validator"),
            trailing: Icon(Icons.style),
            leading: Icon(Icons.check),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => formvalidatorpage()));
            },
          ),
          ListTile(
            title: Text("TextInput styling"),
            subtitle: Text("How to style input texts"),
            trailing: Icon(Icons.style),
            leading: Icon(Icons.style_outlined),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TextInputStlyingpage()));
            },
          ),
          ListTile(
            title: Text("FormBuilderTextField "),
            subtitle: Text("Input text styling styling"),
            trailing: Icon(Icons.text_fields),
            leading: Icon(Icons.text_decrease_rounded),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TextFieldpage()));
            },
          ),
          ListTile(
            title: Text("packegeTost"),
            subtitle: Text("simple tosed medssage"),
            trailing: Icon(Icons.chevron_right),
            leading: Icon(Icons.text_rotate_up),
            onTap: () {
              Fluttertoast.showToast(
                  msg: "This is Center Short Toast",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
          ),
          Divider(),
          ListTile(
            title: Text("hello list"),
            subtitle: Text("List styling"),
            trailing: Icon(Icons.chevron_right),
            leading: Icon(Icons.text_rotate_up),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Textstyling()));
            },
          ),
          ListTile(
            title: Text("container styling"),
            subtitle: Text("contares"),
            trailing: Icon(Icons.chevron_right),
            leading: Icon(Icons.text_rotate_up),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Container2()));
            },
          ),
          ListTile(
            title: Text("column styling"),
            subtitle: Text("my columns"),
            trailing: Icon(Icons.chevron_right),
            leading: Icon(Icons.text_rotate_up),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Columns2()));
            },
          ),
          ListTile(
            title: Text("rows page styling"),
            subtitle: Text("wlcome to rows page"),
            trailing: Icon(Icons.table_rows),
            leading: Icon(Icons.text_rotate_up),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Rowpagestyling()));
            },
          ),
          ListTile(
            title: Text("flex page styling"),
            subtitle: Text("flex to rows page"),
            trailing: Icon(Icons.fullscreen_exit),
            leading: Icon(Icons.text_rotate_up),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Flexpagestyling()));
            },
          ),
          ListTile(
            title: Text("flex page styling"),
            subtitle: Text("flex to rows page"),
            trailing: Icon(Icons.fullscreen_exit),
            leading: Icon(Icons.text_rotate_up),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Stackpagestyling()));
            },
          ),
        ],
      )),
    );
  }
}
