// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(login());
}

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "ورود با کلمه عبور",
              style: TextStyle(
                  fontFamily: "Brb",
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 251, 162, 67),
            elevation: 10,
          ),
          body: login(context),
          backgroundColor: Color.fromARGB(255, 236, 242, 242),
        );
      }),
    );
  }

  Widget login(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            "به علی بابا خوش ‌‌آمدید",
            style: TextStyle(fontFamily: "Brb", fontSize: 20),
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
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
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
                    padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                    child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: "Brb", fontSize: 13),
                        decoration: InputDecoration(
                          hintText: "آدرس ایمیل یا شماره موبایل",
                          suffixIcon: Icon(Icons.supervisor_account_rounded),
                        )),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.fromLTRB(0, 10, 30, 0),
                  //   child: Align(
                  //     alignment: Alignment.centerRight,
                  //     child: Text(
                  //       "رمز عبور را وارد کنید",
                  //       style: TextStyle(
                  //           fontFamily: "Brb",
                  //           fontSize: 13,
                  //           color: Colors.deepOrange),
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: "Brb", fontSize: 13),
                        decoration: InputDecoration(
                          hintText: "کلمه عبور",
                          suffixIcon: Icon(Icons.key_rounded),
                        )),
                  )
                ]),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          // ElevatedButton(
          //     onPressed: (){
          //     },
          //     child: Text("ورود به علی بابا"),
          //   )
          SizedBox(
            child: TextButton(
              onPressed: () {},
              child: Text(
                "ورود به علی بابا",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Brb", fontSize: 19),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 30, 160, 207)),
            ),
            width: 480,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "فراموشی کلمه عبور",
                        style: TextStyle(
                            color: Color.fromARGB(255, 30, 160, 207),
                            fontFamily: "Brb",
                            fontSize: 14),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 236, 242, 242)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 15, 0, 0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "ورود با رمز یکبار مصرف",
                        style: TextStyle(
                            color: Color.fromARGB(255, 30, 160, 207),
                            fontFamily: "Brb",
                            fontSize: 14),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 236, 242, 242)),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
