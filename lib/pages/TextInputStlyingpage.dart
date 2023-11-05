import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class TextInputStlyingpage extends StatelessWidget {
  TextInputStlyingpage({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Input text styliong page",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 2,
          backgroundColor: Colors.blue,
        ),

        body: SingleChildScrollView(
          child:
        Container(
          padding: const EdgeInsets.all(20),
          child: FormBuilder(
              key: _formKey,
              child: Column(
                children: [


                  FormBuilderDropdown(
                    name: "bulider",
                    decoration: InputDecoration(
                      labelText: "select color"
                    ),
                    items: const [
                      DropdownMenuItem(
                        child: Text("blue"),
                        value: "blue",
                      ),
                      DropdownMenuItem(
                        child: Text("red"),
                        value: "red",
                      ),
                      DropdownMenuItem(
                        child: Text("green"),
                        value: "green",
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  FormBuilderDateTimePicker(
                    name: "date2",
                    decoration: InputDecoration(
                      labelText: "Time of the day"
                    ),
                    //inputType: InputType.date,
                    //inputType: InputType.time,
                    inputType: InputType.both,
                    initialTime: TimeOfDay(hour: 8, minute: 0),
                  ),

                  FormBuilderDateRangePicker(
                    name: "date",
                    firstDate: DateTime(1881),
                    lastDate: DateTime(2023),

                    decoration: InputDecoration(
                      labelText: "select date"
                    ),
                  ),
                  SizedBox(height: 10,),

                  FormBuilderChoiceChip(
                    name: "chelsea",
                    alignment: WrapAlignment.spaceEvenly,
                    direction: Axis.horizontal,
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Do you like chelsea",
                      fillColor: Colors.greenAccent,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide.none),
                    ),
                    options: [
                      FormBuilderChipOption(value: "MM10"),
                      FormBuilderChipOption(value: "mine"),
                      FormBuilderChipOption(value: "you"),
                      FormBuilderChipOption(value: "looo"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FormBuilderCheckboxGroup(
                    name: "list",
                    decoration:  InputDecoration(
                      labelText: "who is ur favourite",
                      filled: true,
                      fillColor: Colors.greenAccent,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide.none),
                    ),
                    options: const [
                      FormBuilderFieldOption(value: "adam"),
                      FormBuilderFieldOption(value: "Oscar"),
                      FormBuilderFieldOption(value: "Bell"),
                      FormBuilderFieldOption(value: "Bellar"),
                      FormBuilderFieldOption(value: "MM10"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FormBuilderTextField(
                    name: 'text',
                    // initialValue: "put in ur name",
                    //textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      //icon: Icon(Icons.person),
                      //iconColor: Colors.blue,

                      label: Text("full anem"),
                      hintText: "enter you full name here",
                      floatingLabelStyle: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      errorText: "this  field is required",
                      isDense: true,
                      //prefixIcon: Icon(Icons.person),
                      filled: true,
                      fillColor: Colors.greenAccent,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide.none),
                      prefixText: "Mr./Miss ",
                      // counterText: "0/200"
                    ),
                  ),
                  FormBuilderTextField(
                    name: 'address',
                    //initialValue: "your address",
                    //textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        icon: Icon(Icons.pin),
                        iconColor: Colors.blue,
                        label: Text("Address")),
                  ),
                ],
              )),)
        ));

  }
}
