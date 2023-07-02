// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, unused_element, unused_import, prefer_interpolation_to_compose_strings, avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GlobalVariable.dart';
import 'package:flutter_application_1/pasenger.dart';
import 'package:flutter_application_1/print_ticket.dart';
import 'package:flutter_application_1/safebilit.dart';

String alarm = "";

void main() {
  runApp(const confirm_page());
}

class confirm_page extends StatefulWidget {
  const confirm_page({super.key});

  @override
  State<confirm_page> createState() => _confirm_pageState();
}

class _confirm_pageState extends State<confirm_page> {
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
                          const pasenger(),
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
                "تایید اطلاعات",
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
              Icon(
                Icons.navigate_next,
                color: Color.fromARGB(255, 89, 98, 89),
              ),
              Icon(
                Icons.list_outlined,
                color: Colors.green[800],
              ),
              Text(
                "تایید اطلاعات",
                style: TextStyle(
                    fontFamily: "Brb",
                    fontSize: 15,
                    color: Colors.green[700],
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
    body: whole_confirm_page(),
    backgroundColor: Color.fromARGB(255, 236, 242, 242),
  );
}

class whole_confirm_page extends StatefulWidget {
  const whole_confirm_page({super.key});

  @override
  State<whole_confirm_page> createState() => _whole_confirm_pageState();
}

class _whole_confirm_pageState extends State<whole_confirm_page> {
  List<Widget> mt = [];
  @override
  void initState() {
    super.initState();
    mt = _mywidget_builder();
  }

  List<Widget> _mywidget_builder() {
    List<Widget> mywidgets = [];
    for (int i = 0; i < BuyTicket.number_of_passenger_adult; i++) {
      mywidgets.add(
        Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                    color: Color.fromARGB(255, 125, 122, 122),
                    width: 2,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.people,
                            size: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "مشخصات مسافران",
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          const pasenger(),
                                      transitionsBuilder: (context, animation,
                                          secondaryAnimation, child) {
                                        var begin = const Offset(1.0, 1.0);
                                        var end = Offset.zero;
                                        var curve = Curves.ease;
                                        var tween = Tween(
                                                begin: begin, end: end)
                                            .chain(CurveTween(curve: curve));
                                        return SlideTransition(
                                          position: animation.drive(tween),
                                          child: child,
                                        );
                                      }));
                                },
                                child: Text(
                                  "ویرایش مسافران",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontFamily: "Brb",
                                    fontSize: 15,
                                  ),
                                )),
                          )
                        ],
                      ),
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
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "نام",
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                BuyTicket.passenger_list[i][0],
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "نام خانوادگی",
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                BuyTicket.passenger_list[i][1],
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "کد ملی / شماره پاسپورت",
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                BuyTicket.passenger_list[i][2],
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "تاریخ تولد",
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                BuyTicket.passenger_list[i][3],
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }
    for (int i = BuyTicket.number_of_passenger_adult;
        i <
            BuyTicket.number_of_passenger_child +
                BuyTicket.number_of_passenger_adult;
        i++) {
      mywidgets.add(
        Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                    color: Color.fromARGB(255, 125, 122, 122),
                    width: 2,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.people,
                            size: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "مشخصات مسافران",
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          const pasenger(),
                                      transitionsBuilder: (context, animation,
                                          secondaryAnimation, child) {
                                        var begin = const Offset(1.0, 1.0);
                                        var end = Offset.zero;
                                        var curve = Curves.ease;
                                        var tween = Tween(
                                                begin: begin, end: end)
                                            .chain(CurveTween(curve: curve));
                                        return SlideTransition(
                                          position: animation.drive(tween),
                                          child: child,
                                        );
                                      }));
                                },
                                child: Text(
                                  "ویرایش مسافران",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontFamily: "Brb",
                                    fontSize: 15,
                                  ),
                                )),
                          )
                        ],
                      ),
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
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "نام",
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                BuyTicket.passenger_list[i][0],
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "نام خانوادگی",
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                BuyTicket.passenger_list[i][1],
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "کد ملی / شماره پاسپورت",
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                BuyTicket.passenger_list[i][2],
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "تاریخ تولد",
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                BuyTicket.passenger_list[i][3],
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }
    return mywidgets;
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
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(
                        color: Color.fromARGB(255, 125, 122, 122),
                        width: 2,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.airplane_ticket_outlined,
                                size: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "اطلاعات بلیط",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "بلیط رفت",
                                style: TextStyle(
                                  fontFamily: "Brb",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "مبدا ",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    main_stuff.convert_city_to_persion(
                                        first_flight.departure_city),
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "مقصد",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    main_stuff.convert_city_to_persion(
                                        first_flight.arrival_city),
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "شرکت هواپیمایی",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    first_flight.airline,
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "تاریخ و ساعت پرواز",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    first_flight.departure_date +
                                        first_flight.departure_time,
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "شماره پرواز",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "W${main_stuff.generateRandomNumber(1000, 10000)}",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "کلاس پروازی",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "اکونومی",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "مقدار بار مجاز",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    " ۲۵ کیلوگرم",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "خدمات ویژه",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "ندارد",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "قابلیت استرداد",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Visibility(
                              visible: main_stuff.has_return_flight,
                              child: Column(
                                children: [
                                  Divider(
                                    color: Color.fromARGB(255, 92, 90, 90),
                                    indent: 20,
                                    endIndent: 20,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "مبدا ",
                                            style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(child: Container()),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            main_stuff.convert_city_to_persion(
                                                return_flight
                                                    .return_departure_city),
                                            style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "مقصد",
                                            style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(child: Container()),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            main_stuff.convert_city_to_persion(
                                                return_flight
                                                    .return_arrival_city),
                                            style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "شرکت هواپیمایی",
                                            style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(child: Container()),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            main_stuff
                                                .convert_airline_to_persian(
                                                    return_flight
                                                        .return_airline),
                                            style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "تاریخ و ساعت پرواز",
                                            style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(child: Container()),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            return_flight
                                                    .return_departure_date +
                                                return_flight
                                                    .return_departure_time,
                                            style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "شماره پرواز",
                                            style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(child: Container()),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "w${main_stuff.generateRandomNumber(1000, 10000)}",
                                            style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "کلاس پروازی",
                                            style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(child: Container()),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "اکونومی",
                                            style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "مقدار بار مجاز",
                                            style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(child: Container()),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            " ۳۰ کیلوگرم",
                                            style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "خدمات ویژه",
                                            style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(child: Container()),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "ندارد",
                                            style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "قابلیت استرداد",
                                            style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(child: Container()),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "-",
                                            style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Column(children: mt),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(
                        color: Color.fromARGB(255, 125, 122, 122),
                        width: 2,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.email,
                                size: 25,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "اطلاع رسانی سفر",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                child: SizedBox(
                                  width: 300,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons
                                              .security_update_warning_outlined,
                                          size: 20,
                                          color: Colors.brown,
                                        ),
                                        Text(
                                          "اطلاعات بلیط به این آدرس ارسال می شود.",
                                          style: TextStyle(
                                            fontFamily: "Brb",
                                            fontSize: 18,
                                            color: Colors.brown,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "ایمیل",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    BuyTicket.passenger_email,
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "شماره موبایل",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    BuyTicket.passenger_phone,
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Text(alarm),
              SizedBox(
                //etela resani
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    //Username-Company-Mabda-Maghsad-Time-Date-Count
                    String counter = (BuyTicket.number_of_passenger_adult +
                            BuyTicket.number_of_passenger_child)
                        .toString();
                    String temp = main_stuff.login_username +
                        "-" +
                        first_flight.airline +
                        "-" +
                        first_flight.departure_city +
                        "-" +
                        first_flight.arrival_city +
                        "-" +
                        first_flight.departure_time +
                        "-" +
                        first_flight.departure_date +
                        "-" +
                        counter;
                    print("dastoor is :\n" + temp);
                    Future<String> future_user_info = send_buy(temp);
                    future_user_info.then((value) {
                      setState(() {
                        print(value);
                        if (value == "wrong") {
                          setState(() {
                            alarm = "موجودی ناکافی";
                          });
                        } else {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      const print_ticket(),
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
                        }
                      });
                    });
                    sleep(const Duration(milliseconds: 100));
                    if (main_stuff.has_return_flight) {
                      String temp2 = main_stuff.login_username +
                          "-" +
                          return_flight.return_airline +
                          "-" +
                          return_flight.return_departure_city +
                          "-" +
                          return_flight.return_arrival_city +
                          "-" +
                          return_flight.return_departure_time +
                          "-" +
                          return_flight.return_departure_date +
                          "-" +
                          counter;
                      print("dastoor return is :\n" + temp2);
                      Future<String> future_user_info_2 = send_buy(temp2);
                      future_user_info_2.then((value) {
                        setState(() {
                          if (value == "wrong") {
                          setState(() {
                            alarm = "موجودی ناکافی";
                          });
                        } else {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      const print_ticket(),
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
                        }

                        });
                      });
                    }
                    
                    sleep(const Duration(milliseconds: 500));
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "پرداخت آنلاین",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Brb",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Expanded(child: Container()),
                            Text(
                              BuyTicket.total_price(),
                              style: TextStyle(
                                  color: Colors.black,
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

  Future<String> send_buy(String message) async {
    String res = "";
    String request = "BuyTickets\n" + message + "\u0000";
    var socket = await Socket.connect(ip_address, 8000);
    socket.write(request);
    socket.flush();
    var subscription = socket.listen((response) {
      res += String.fromCharCodes(response);
    });
    await subscription.asFuture<void>();
    return res;
  }
}
