// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainpage.dart';
import 'package:flutter_application_1/signup.dart';

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
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const main_page(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = const Offset(1.0, 1.0);
                        var end = Offset.zero;
                        var curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      }));
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black,
                ),
              ),
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
          ),
        );
      }),
    );
  }

  Widget login(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
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
                          textAlignVertical: TextAlignVertical.bottom,
                          style: TextStyle(fontFamily: "Brb", fontSize: 13),
                          decoration: InputDecoration(
                            hintText: "آدرس ایمیل یا شماره موبایل",
                            prefixIcon: Icon(Icons.supervisor_account_rounded),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: TextField(
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.bottom,
                          style: TextStyle(fontFamily: "Brb", fontSize: 13),
                          decoration: InputDecoration(
                            hintText: "کلمه عبور",
                            contentPadding: EdgeInsets.all(10),
                            prefixIcon: Icon(Icons.key_rounded),
                          )),
                    ),
                    Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: 100,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {

                    Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const signup(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = const Offset(1.0, 1.0);
                        var end = Offset.zero;
                        var curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      }));

                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "ثبت نام",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Brb",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  //save account
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const main_page(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = const Offset(1.0, 1.0);
                        var end = Offset.zero;
                        var curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      }));
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ورود به علی ورود",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Brb",
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
