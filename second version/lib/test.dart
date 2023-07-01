// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, library_private_types_in_public_api, annotate_overrides, avoid_print, prefer_interpolation_to_compose_strings, unused_field, non_constant_identifier_names, avoid_types_as_parameter_names, prefer_final_fields, unused_import

import 'dart:io';
import 'package:flutter_application_1/GlobalVariable.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

List<String> week_days = [
  "شنبه",
  "یکشنبه",
  "دوشنبه",
  "سه شنبه",
  "چهارشنبه",
  "پنج شنبه",
  "جمعه"
];

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final formKey = GlobalKey<FormState>(); //key for form
  bool passwordVisible22 = false;

  final TextEditingController _controller = TextEditingController(text: "");
  String _log = "";

  late String testtest ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form Validation"),
          backgroundColor: Colors.indigoAccent,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Form(
            key: formKey, //key for form
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 30, 0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "شماره موبایل یا آدرس‌ایمیل به همراه کلمه عبور خود را وارد کنید",
                      style: TextStyle(
                          fontFamily: "Brb",
                          fontSize: 13,
                          color: Color.fromARGB(255, 27, 180, 246)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "آدرس ایمیل یا شماره موبایل",
                      prefixIcon: Icon(Icons.supervisor_account_rounded),
                    ),
                    //controller: _controller,
                    
                    validator: (value) {
                      if (value!.isEmpty ||
                          !(RegExp(r'^(?=.*[aA].*[aA].*)(?=.*[01])[a-zA-Z0-9]{8,}$')
                                  .hasMatch(value) ||
                              RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                  .hasMatch(value))) {
                        return "لطفا ایمیل خود را صحیح وارد کنید.";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                
                //Text(testtest),
                
                //change testtest value here
                

                ElevatedButton(
                    onPressed: () {
                      // setState(() {
                      //     testtest = "saman";
                      // });
                      // if (formKey.currentState!.validate()) {
                      //   print("testrequest");
                      //   //send(_controller.text);
                      // }
                    },
                    child: Text("Submit Data")
                ),

                //injaaaaa
                

                //Text(testtest),


              ],
            ),
          ),
        ));
  }
  
  
}
