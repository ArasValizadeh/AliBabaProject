// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, annotate_overrides, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const signup());
}

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

  

class _signupState extends State<signup> {

  bool passwordVisible=false;
  void initState(){
    super.initState();
    passwordVisible = true;
  } 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text("ثبت نام",
              style: TextStyle(
                  fontFamily: "Brb",
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 251, 162, 67),
            elevation: 10,
          ),
          body: signup(context),
        );
      }),
    );
  }

  Widget signup(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            "به علی بابا خوش ‌‌آمدید",
            style: TextStyle(
                backgroundColor: Colors.white, fontFamily: "Brb", fontSize: 20),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 300,
            width: 500,
            margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              elevation: 20,
              child: Center(
                child: Column(children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 30, 0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "شماره موبایل یا آدرس‌ایمیل به همراه کلمه عبور خود را وارد کنید",
                        style: TextStyle(
                            fontFamily: "Tnb",
                            fontSize: 13,
                            color: Color.fromARGB(255, 150, 177, 189)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: "Brb", fontSize: 13),
                        decoration: InputDecoration(
                          hintText: "آدرس ایمیل یا شماره موبایل",
                          suffixIcon: Icon(Icons.supervisor_account_rounded),
                        )),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: TextField(
                        obscureText: passwordVisible,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: "Brb", fontSize: 13),
                        decoration: InputDecoration(
                          hintText: "کلمه عبور",
                          suffixIcon: Icon(Icons.key_rounded),
                          icon: IconButton(icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
                          onPressed: (){
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                          )
                        )),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: TextField(
                        obscureText: passwordVisible,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: "Brb", fontSize: 13),
                        decoration: InputDecoration(
                          hintText: "تکرار کلمه عبور",
                          suffixIcon: Icon(Icons.check_circle_outline_rounded),
                          icon: IconButton(icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
                          onPressed: (){
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                          )
                        )),
                  )
                ]),
              ),
            ),
          ),
        const SizedBox(
            height: 200,
        ),

        SizedBox(
            child: TextButton(
              onPressed: () {},
              child: Text(
                "ثبت نام در علی بابا",
                style: TextStyle(color: Colors.white ,fontFamily: "Brb" ,fontSize: 30),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 30, 160, 207)),
            ),
            width: 400,

        ),

        ],
      ),
    );
  }
}
