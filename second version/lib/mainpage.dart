// ignore_for_file: camel_case_types, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_local_variable, empty_statements, unnecessary_new, avoid_web_libraries_in_flutter, unused_import, dead_code, prefer_interpolation_to_compose_strings, avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GlobalVariable.dart';
import 'package:flutter_application_1/account_page.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/my_trip.dart';
import 'package:flutter_application_1/pasenger.dart';
import 'package:flutter_application_1/safebilit.dart';
import 'package:flutter_application_1/search_flight.dart';
import 'package:flutter_application_1/tarakonesh.dart';

void main() {
  runApp(const main_page());
}

class main_page extends StatefulWidget {
  const main_page({super.key});

  @override
  State<main_page> createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return banner(context);
      }),
    );
  }
}

Widget banner(BuildContext context) {
  return Scaffold(
    resizeToAvoidBottomInset: false,
    appBar: AppBar(
      backgroundColor: Colors.orange,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.travel_explore, color: Colors.black, size: 50),
          const SizedBox(width: 2),
          Text(
            "alibaba",
            style: TextStyle(
              fontFamily: "Brb",
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
    body: main_items(context),
  );
}

Widget main_items(BuildContext context) {
  return Column(
    children: [
      Center(
        child: SizedBox(
          width: 400,
          height: 500,
          child: Center(
            child: Scaffold(
              body: FractionallySizedBox(
                heightFactor: 1 /
                    2, // Set the height factor to 1/3 of the available height
                child: Align(
                  alignment: Alignment.topCenter,
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: [
                      buildItem(context, "هتل", widthbox: 50, heightbox: 20),
                      buildItem(context, "قطار", widthbox: 50, heightbox: 20),
                      buildItem(context, "پرواز", widthbox: 50, heightbox: 20),
                      buildItem(context, "اتوبوس", widthbox: 50, heightbox: 20),
                      buildItem(context, "ویلا", widthbox: 50, heightbox: 20),
                      buildItem(context, "تور", widthbox: 50, heightbox: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Expanded(child: Container()),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(width: 400, height: 120, child: buttonbanner()),
        ),
      )
    ],
  );
}

class buttonbanner extends StatefulWidget {
  const buttonbanner({super.key});

  @override
  State<buttonbanner> createState() => _buttonbannerState();
}

class _buttonbannerState extends State<buttonbanner> {
  static Future<String> get_tarakonesh(String message) async {
    String res = "";
    String request =  message + "\u0000";
    var socket = await Socket.connect(ip_address, 8000);
    socket.write(request);
    socket.flush();
    var subscription = socket.listen((response) {
      res += String.fromCharCodes(response);
    });
    await subscription.asFuture<void>();
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.orangeAccent,
            bottomNavigationBar: BottomAppBar(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        width: 100,
                        height: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        (main_stuff.isLogin
                                            ? account_page()
                                            : login()),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  var begin = const Offset(0.0, 0.0);
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.account_circle_outlined,
                                size: 30,
                                color: Colors.black,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "حساب کاربری",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Brb",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: double.infinity,
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                        ),
                        onPressed: () {
                          if (main_stuff.isLogin) {
                            //todo
                            setState(() {
                              Future<String> future_mytrip =
                                  get_tarakonesh("MyFlights\n" +main_stuff.login_username);
                              future_mytrip.then((value) {
                                print(value);
                                List<String> tempList = value.split(',');
                                main_stuff.my_trip_list.clear();
                                for (String item in tempList) {
                                  List<String> splitItems = item.split('-');   
                                  main_stuff.my_trip_list.add(splitItems);
                                }
                                print(main_stuff.my_trip_list);
                              });
                            });
                          }
                           Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (context, animation,
                                      secondaryAnimation) =>
                                  (main_stuff.isLogin ? my_trip() : login()),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                var begin = const Offset(0.0, 0.0);
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.backpack_outlined,
                              size: 30,
                              color: Colors.black,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "سفرهای من",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 19,
                                  fontFamily: "Brb",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: double.infinity,
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                        ),
                        onPressed: () {
                          if (main_stuff.isLogin) {
                            setState(() {
                              Future<String> future_tarakonesh =
                                  get_tarakonesh("MyTransactions\n" + main_stuff.login_username);
                              future_tarakonesh.then((value) {
                                print(value);
                                main_stuff.login_user_tarakonesh =
                                    value.split(',');
                              });
                            });
                          }
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (context, animation,
                                      secondaryAnimation) =>
                                  (main_stuff.isLogin ? tarakonesh() : login()),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                var begin = const Offset(0.0, 0.0);
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.backpack_outlined,
                              size: 30,
                              color: Colors.black,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8, top: 8),
                              child: Text(
                                "تراکنش ها",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 19,
                                  fontFamily: "Brb",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      const login(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.house_sharp,
                              size: 30,
                              color: Colors.black,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "خانه",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Brb",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}

Widget buildItem(BuildContext context, String transportaion,
    {required double widthbox, required double heightbox}) {
  IconData iconData;
  if (transportaion == "قطار") {
    iconData = Icons.train;
  } else if (transportaion == "پرواز") {
    iconData = Icons.flight_rounded;
  } else if (transportaion == "هتل") {
    iconData = Icons.hotel;
  } else if (transportaion == "اتوبوس") {
    iconData = Icons.train_outlined;
  } else if (transportaion == "ویلا") {
    iconData = Icons.house;
  } else {
    iconData = Icons.backpack;
  }
  ;

  return GestureDetector(
    child: Container(
        width: widthbox,
        height: heightbox,
        margin: EdgeInsets.all(4),
        padding: EdgeInsets.all(4),
        color: Colors.white,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(225, 224, 224, 224),
          ),
          onPressed: transportaion == "پرواز"
              ? () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const safebilit(),
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
                }
              : null,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Text(
                transportaion,
                style: TextStyle(
                  fontFamily: "Brb",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(width: 2),
            Icon(
              iconData,
              size: 30,
              color: Colors.black,
            ),
          ]),
        )),
  );
}

Widget main_menu(BuildContext context) {
  return Center(
      child: Container(
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Color.fromRGBO(100, 100, 100, 1),
                    offset: Offset(2, 2),
                    blurRadius: 200)
              ]),
          margin: EdgeInsets.fromLTRB(10, 10, 10, 500),
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "قطار",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Brb",
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    style: TextButton.styleFrom(),
                  ),
                  alignment: Alignment.centerRight,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "پرواز",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Brb",
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    style: TextButton.styleFrom(),
                  ),
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "هتل",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Brb",
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    style: TextButton.styleFrom(),
                  ),
                  alignment: Alignment.centerRight,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "اتوبوس",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Brb",
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    style: TextButton.styleFrom(),
                  ),
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "ویلا",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Brb",
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    style: TextButton.styleFrom(),
                  ),
                  alignment: Alignment.centerRight,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "تور",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Brb",
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    style: TextButton.styleFrom(),
                  ),
                  alignment: Alignment.centerRight,
                ),
              ],
            )
          ])));
}
