// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, avoid_print, prefer_typing_uninitialized_variables, deprecated_member_use, no_leading_underscores_for_local_identifiers, overridden_fields, unused_element, prefer_interpolation_to_compose_strings

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GlobalVariable.dart';
import 'package:flutter_application_1/confirm_page.dart';
import 'package:flutter_application_1/search_flight.dart';

List<TextEditingController> _controller_name = List.generate(
  BuyTicket.number_of_passenger_adult + BuyTicket.number_of_passenger_child,
  (index) => TextEditingController(text: ""),
);
List<TextEditingController> _controller_lastname = List.generate(
  BuyTicket.number_of_passenger_adult + BuyTicket.number_of_passenger_child,
  (index) => TextEditingController(text: ""),
);
List<TextEditingController> _controller_birthday = List.generate(
  BuyTicket.number_of_passenger_adult + BuyTicket.number_of_passenger_child,
  (index) => TextEditingController(text: ""),
);
List<TextEditingController> _controller_id_number = List.generate(
  BuyTicket.number_of_passenger_adult + BuyTicket.number_of_passenger_child,
  (index) => TextEditingController(text: ""),
);
TextEditingController _controller_email = TextEditingController(text: "");
TextEditingController _controller_phone = TextEditingController(text: "");

String _log = "";

void main() {
  runApp(const pasenger());
}

class pasenger extends StatefulWidget {
  const pasenger({super.key});

  @override
  State<pasenger> createState() => _pasengerState();
}

class _pasengerState extends State<pasenger> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return page(context);
      }),
    );
  }
}

Widget page(BuildContext context) {
  return Directionality(
      textDirection: TextDirection.rtl, child: status_icons(context));
}

Widget status_icons(BuildContext context) {
  return Scaffold(
    resizeToAvoidBottomInset: false,
    appBar: AppBar(
      toolbarHeight: 80,
      backgroundColor: Color.fromARGB(255, 251, 162, 67),
      elevation: 10,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const search_flight(),
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
              Text(
                "مشخصات مسافران",
                style: TextStyle(
                    fontFamily: "Brb",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.flight,
                color: Colors.green[800],
              ),
              Icon(
                Icons.navigate_next,
                color: Color.fromARGB(255, 89, 98, 89),
              ),
              Icon(
                Icons.people_alt,
                color: Colors.green[800],
              ),
              Text(
                "مسافران",
                style: TextStyle(
                    fontFamily: "Brb",
                    fontSize: 15,
                    color: Colors.green[800],
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.navigate_next,
                color: Color.fromARGB(255, 89, 98, 89),
              ),
              Text(
                "تایید اطلاعات",
                style: TextStyle(
                    fontFamily: "Brb",
                    fontSize: 15,
                    color: Color.fromARGB(255, 89, 98, 89),
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.navigate_next,
                color: Color.fromARGB(255, 89, 98, 89),
              ),
              Text(
                "پرداخت",
                style: TextStyle(
                    fontFamily: "Brb",
                    fontSize: 15,
                    color: Color.fromARGB(255, 89, 98, 89),
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.navigate_next,
                color: Color.fromARGB(255, 89, 98, 89),
              ),
              Text(
                "صدور بلیط",
                style: TextStyle(
                    fontFamily: "Brb",
                    fontSize: 15,
                    color: Color.fromARGB(255, 89, 98, 89),
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    ),
    body: whole_page(),
    backgroundColor: Color.fromARGB(255, 236, 242, 242),
  );
}

class whole_page extends StatefulWidget {
  const whole_page({super.key});

  @override
  State<whole_page> createState() => _whole_pageState();
}

class _whole_pageState extends State<whole_page> {
  List<Widget> pasenger_getinfo = [];
  @override
  void initState() {
    super.initState();
    pasenger_getinfo = _passenger_getinfo_maker();
  }

  List<Widget> _passenger_getinfo_maker() {
    for (int i = 0; i < BuyTicket.number_of_passenger_adult; i++) {
      if (i == 0) {
        pasenger_getinfo.add(Container(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Color.fromARGB(255, 125, 122, 122),
                  width: 2,
                )),
                child: SizedBox(
                  child: Container(
                    //pasenger
                    child: ExpansionTile(
                        title: Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  "نام و نام خانوادگی",
                                  style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    "شماره ملی / پاسپورت",
                                    style: TextStyle(
                                        fontFamily: "Brb",
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 87, 82, 82)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                      //style: BorderStyle.solid
                                    )),
                                child: SizedBox(
                                  width: 60,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "بزرگسال",
                                      style: TextStyle(
                                        fontFamily: "Brb",
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 91, 84, 84),
                                        width: 1,
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontFamily: "Brb", fontSize: 20),
                                      decoration: InputDecoration(
                                          hintText: "نام",
                                          hintStyle: TextStyle(
                                              fontSize: 20, fontFamily: "Brb")),
                                      controller: _controller_name[i],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 91, 84, 84),
                                        width: 1,
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontFamily: "Brb", fontSize: 20),
                                      decoration: InputDecoration(
                                          hintText: "نام خانوادگی",
                                          hintStyle: TextStyle(
                                              fontSize: 20, fontFamily: "Brb")),
                                      controller: _controller_lastname[i],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 91, 84, 84),
                                        width: 1,
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: TextFormField(
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        labelText: "کد ملی",
                                        labelStyle: TextStyle(
                                            fontSize: 20, fontFamily: "Brb"),
                                      ),
                                      controller: _controller_id_number[i],
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return null;
                                        }
                                        if (value.isEmpty ||
                                            !RegExp(r'^\d{10}$')
                                                .hasMatch(value)) {
                                          //regex must be checked
                                          return "کد ملی نامعتبر است.";
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 91, 84, 84),
                                        width: 1,
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontFamily: "Brb", fontSize: 20),
                                      decoration: InputDecoration(
                                          hintText: "تاریخ تولد",
                                          hintStyle: TextStyle(
                                              fontSize: 20, fontFamily: "Brb")),
                                      controller: _controller_birthday[i],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 91, 84, 84),
                                        width: 1,
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontFamily: "Brb", fontSize: 20),
                                      decoration: InputDecoration(
                                          hintText: "ایمیل",
                                          hintStyle: TextStyle(
                                              fontSize: 20, fontFamily: "Brb")),
                                      controller: _controller_email,
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 91, 84, 84),
                                        width: 1,
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontFamily: "Brb", fontSize: 20),
                                      decoration: InputDecoration(
                                          hintText: "شماره موبایل",
                                          hintStyle: TextStyle(
                                              fontSize: 20, fontFamily: "Brb")),
                                      controller: _controller_phone,
                                    ),
                                  ),
                                ),
                              ),

                              //genderBox(),
                            ],
                          )
                        ]),
                  ),
                ),
              )),
        ));
      } else {
        pasenger_getinfo.add(
          Container(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Color.fromARGB(255, 125, 122, 122),
                    width: 2,
                  )),
                  child: SizedBox(
                    child: Container(
                      //pasenger
                      child: ExpansionTile(
                        title: Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  "نام و نام خانوادگی",
                                  style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    "شماره ملی / پاسپورت",
                                    style: TextStyle(
                                        fontFamily: "Brb",
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 87, 82, 82)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                      //style: BorderStyle.solid
                                    )),
                                child: SizedBox(
                                  width: 60,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "بزرگسال",
                                      style: TextStyle(
                                        fontFamily: "Brb",
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 91, 84, 84),
                                        width: 1,
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontFamily: "Brb", fontSize: 20),
                                      decoration: InputDecoration(
                                          hintText: "نام",
                                          hintStyle: TextStyle(
                                              fontSize: 20, fontFamily: "Brb")),
                                      controller: _controller_name[i],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 91, 84, 84),
                                        width: 1,
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontFamily: "Brb", fontSize: 20),
                                      decoration: InputDecoration(
                                          hintText: "نام خانوادگی",
                                          hintStyle: TextStyle(
                                              fontSize: 20, fontFamily: "Brb")),
                                      controller: _controller_lastname[i],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 91, 84, 84),
                                        width: 1,
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontFamily: "Brb", fontSize: 20),
                                      decoration: InputDecoration(
                                          hintText: "کد ملی",
                                          hintStyle: TextStyle(
                                              fontSize: 20, fontFamily: "Brb")),
                                      controller: _controller_id_number[i],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 91, 84, 84),
                                        width: 1,
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontFamily: "Brb", fontSize: 20),
                                      decoration: InputDecoration(
                                          hintText: "تاریخ تولد",
                                          hintStyle: TextStyle(
                                              fontSize: 20, fontFamily: "Brb")),
                                      controller: _controller_birthday[i],
                                    ),
                                  ),
                                ),
                              ),

                              //genderBox(),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )),
          ),
        );
      }
    }
    for (int i = BuyTicket.number_of_passenger_adult;
        i <
            BuyTicket.number_of_passenger_child +
                BuyTicket.number_of_passenger_adult;
        i++) {
      pasenger_getinfo.add(
        Container(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Color.fromARGB(255, 125, 122, 122),
                  width: 2,
                )),
                child: SizedBox(
                  child: Container(
                    //pasenger
                    child: ExpansionTile(
                        title: Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  "نام و نام خانوادگی",
                                  style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    "شماره ملی / پاسپورت",
                                    style: TextStyle(
                                        fontFamily: "Brb",
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 87, 82, 82)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                      //style: BorderStyle.solid
                                    )),
                                child: SizedBox(
                                  width: 60,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "خردسال",
                                      style: TextStyle(
                                        fontFamily: "Brb",
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 91, 84, 84),
                                        width: 1,
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontFamily: "Brb", fontSize: 20),
                                      decoration: InputDecoration(
                                          hintText: "نام",
                                          hintStyle: TextStyle(
                                              fontSize: 20, fontFamily: "Brb")),
                                      controller: _controller_name[i],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 91, 84, 84),
                                        width: 1,
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontFamily: "Brb", fontSize: 20),
                                      decoration: InputDecoration(
                                          hintText: "نام خانوادگی",
                                          hintStyle: TextStyle(
                                              fontSize: 20, fontFamily: "Brb")),
                                      controller: _controller_lastname[i],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 91, 84, 84),
                                        width: 1,
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontFamily: "Brb", fontSize: 20),
                                        decoration: InputDecoration(
                                            hintText: "کد ملی",
                                            hintStyle: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "Brb")),
                                        controller: _controller_id_number[i]),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 91, 84, 84),
                                        width: 1,
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontFamily: "Brb", fontSize: 20),
                                      decoration: InputDecoration(
                                          hintText: "تاریخ تولد",
                                          hintStyle: TextStyle(
                                              fontSize: 20, fontFamily: "Brb")),
                                      controller: _controller_birthday[i],
                                    ),
                                  ),
                                ),
                              ),

                              //genderBox(),
                            ],
                          )
                        ]),
                  ),
                ),
              )),
        ),
      );
    }
    return pasenger_getinfo;
  }

  send_passenger_getter_info(String message) async {
    String request = message + "\u0000";
    print("request");

    await Socket.connect(ip_address, 8000).then((serverSocket) {
      print("connected");
      serverSocket.write(request);
      serverSocket.flush();
      print("write");
      serverSocket.listen((response) {
        print(String.fromCharCodes(response));
        // setState(() {
        //   _log += String.fromCharCodes(response) + "\n";
        // });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 236, 242, 242),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Color.fromARGB(255, 125, 122, 122),
                        width: 2,
                      )),
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: [
                            //first line
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue[100],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: SizedBox(
                                        width: 80,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Icon(
                                                  Icons.check_circle_rounded,
                                                  size: 20,
                                                  color: Colors.blue[900],
                                                ),
                                              ),
                                              Text(
                                                "بلیط رفت",
                                                style: TextStyle(
                                                    fontFamily: "Brb",
                                                    fontSize: 15,
                                                    color: Colors.blue[900],
                                                    fontWeight:
                                                        FontWeight.w100),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    departure_date[index],
                                    style: TextStyle(
                                        fontFamily: "Brb",
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    //return to last page
                                  },
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: SizedBox(
                                      child: Row(
                                        children: [
                                          Text(
                                            "تغییر بلیط",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Icon(
                                            Icons.change_circle_outlined,
                                            color: Colors.blue,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //second line
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  //airline axs + name
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: Image.asset(airline_logo[index]),
                                      ),
                                      Text(
                                        airline_name[index],
                                        style: TextStyle(
                                            fontFamily: "Brb",
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              departure_city[index],
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_back_rounded,
                                              textDirection: TextDirection.ltr,
                                            ),
                                            Text(
                                              arrival_city[index],
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15),
                                          child: Text(
                                            departure_time[index],
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ))),
              Visibility(
                visible: has_return_flight,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Color.fromARGB(255, 125, 122, 122),
                          width: 2,
                        )),
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              //first line
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.blue[100],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          // border: Border.all(
                                          //   color:Colors.black,
                                          //   width: 1,
                                          //   //style: BorderStyle.solid
                                          //   )
                                        ),
                                        child: SizedBox(
                                          width: 100,
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: Icon(
                                                    Icons.check_circle_rounded,
                                                    size: 20,
                                                    color: Colors.blue[900],
                                                  ),
                                                ),
                                                Text(
                                                  "بلیط برگشت",
                                                  style: TextStyle(
                                                      fontFamily: "Brb",
                                                      fontSize: 15,
                                                      color: Colors.blue[900],
                                                      fontWeight:
                                                          FontWeight.w100),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      return_date,
                                      style: TextStyle(
                                          fontFamily: "Brb",
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      //return to last page
                                    },
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              "تغییر بلیط",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                              ),
                                            ),
                                            Icon(
                                              Icons.change_circle_outlined,
                                              color: Colors.blue,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //second line
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    //airline axs + name
                                    Column(
                                      children: [
                                        SizedBox(
                                          width: 50,
                                          height: 50,
                                          child:
                                              Image.asset(return_airline_logo),
                                        ),
                                        Text(
                                          return_airline_name,
                                          style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                arrival_city[index],
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_back_rounded,
                                                textDirection:
                                                    TextDirection.ltr,
                                              ),
                                              Text(
                                                departure_city[index],
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 15),
                                            child: Text(
                                              arrival_time[index],
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.people,
                      size: 30,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "مشخصات مسافران",
                        style: TextStyle(
                          fontFamily: "Brb",
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Column(children: pasenger_getinfo),
              has_return_flight
                  ? SizedBox(
                      height: 50,
                    )
                  : SizedBox(
                      height: 140,
                    ),
              SizedBox(
                width: double.infinity,
                height: 150,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      BuyTicket.passenger_email = _controller_email.text;
                      BuyTicket.passenger_phone = _controller_phone.text;
                      List<List<TextEditingController>> controllers = [
                        _controller_name,
                        _controller_lastname,
                        _controller_id_number,
                        _controller_birthday,
                      ];
                      for (int i = 0; i < _controller_name.length; i++) {
                        List<String> passengerDetails = [];
                        passengerDetails.add(_controller_name[i].text);
                        passengerDetails.add(_controller_lastname[i].text);
                        passengerDetails.add(_controller_id_number[i].text);
                        passengerDetails.add(_controller_birthday[i].text);
                        
                        BuyTicket.passenger_list.add(passengerDetails);
                      }
                    });

                    //todo
                    //send_passenger_getter_info(_controller_name.text + "-" + _controller_lastname.text + "-" + _controller_id_number.text );
                    //we only need to save information and it is not neccesery to be sent to email

                    // if (formkey_passenger_getinfo.currentState!.validate()) {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const confirm_page(),
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
                    //}
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                        Color.fromARGB(255, 236, 242, 242), // Background color
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.warning_amber_outlined,
                                  size: 15,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "با ادامه قوانین سایت و قوانین پرواز موافقت کرده اید.",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Brb",
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "مجموع قیمت",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Brb",
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(child: Container()),
                                Text(
                                  ticket_price,
                                  style: TextStyle(
                                      color: Colors.blue[800],
                                      fontFamily: "Brb",
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("ریال",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 50, 43, 43),
                                        fontSize: 15,
                                        fontFamily: "Brb",
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            Container(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                child: SizedBox(
                                  height: 40,
                                  width: double.infinity,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "تایید و ادامه پرداخت",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Brb",
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class genderBox extends StatefulWidget {
  const genderBox({super.key});

  @override
  State<genderBox> createState() => _genderBoxState();
}

class _genderBoxState extends State<genderBox> {
  String? _selectedGender;

  String? value;

  void updateGender(String s) {
    setState(() {
      _selectedGender = s;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(
                      color: Color.fromARGB(255, 91, 84, 84),
                      width: 1,
                    )),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _selectedGender,
                    hint: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        "جنسیت",
                        style: TextStyle(
                          fontFamily: "Brb",
                          fontSize: 20,
                        ),
                      ),
                    ),
                    isExpanded: true,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value;
                      });
                    },
                    icon: const SizedBox.shrink(),
                    items: [
                      CustomDropdownMenuItem<String>(
                        value: 'مرد',
                        label: 'مرد',
                      ),
                      CustomDropdownMenuItem<String>(
                        value: 'زن',
                        label: 'زن',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomDropdownMenuItem<T> extends DropdownMenuItem<T> {
  @override
  final T value;
  final String label;

  CustomDropdownMenuItem({
    super.key,
    required this.value,
    required this.label,
  }) : super(
          value: value,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 8.0),
                Text(
                  label,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
          ),
        );
}
