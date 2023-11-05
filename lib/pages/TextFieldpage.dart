import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class TextFieldpage extends StatelessWidget {
  TextFieldpage({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Input text field",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 2,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child:  FormBuilder(
            key: _formKey,
            child:   FormBuilderTextField(
              name: 'text',
            )
          ),
        )
    );
  }
}
