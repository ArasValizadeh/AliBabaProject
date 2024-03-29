// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, unused_element, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GlobalVariable.dart';
import 'package:flutter_application_1/pasenger.dart';
import 'package:flutter_application_1/print_ticket.dart';
import 'package:flutter_application_1/safebilit.dart';

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
    body: whole_page(context),
    backgroundColor: Color.fromARGB(255, 236, 242, 242),
  );
}

Widget whole_page(BuildContext context) {
  String departure_city = "تهران";
  String arrival_city = "کیش";
  String airline_name = "ماهان";
  String return_airline_name = "زاگرس";
  String date_and_time_departure = "دوشنبه ۲۶ تیر - ۱۱:۴۵";
  String return_date_and_time_departure = "شنبه ۳۱ تیر - ۱۶:۱۵";
  String flight_numberID = "W5 1080";
  String return_flight_numberID = "W5 1081";
  String flight_class_type = "اکونومی";
  String return_flight_class_type = "بیزینس";
  String baggage_allowance = " ۲۵ کیلوگرم";
  String return_baggage_allowance = " ۳۰ کیلوگرم";
  String special_request = "ندارد";
  String return_special_request = "ندارد";
  String refundability = "-";
  String return_refundability = "-";


  int number_of_passenger = 2;
  List<String> passenger_name = ["سامان رستم بیگی", "آراس ولی زاده"];
  List<String> passenger_gender = ["مرد", "مرد"];
  List<String> passenger_nationalID = ["۰۴۴۱۱۶۲۷۳۵", "۰۲۳۴۵۶۳۴۵"];
  List<String> passenger_birthday = ["۱۳۸۲/۰۹/۲۲", "۱۳۸۵/۰۷/۲۳"];
  List<String> passenger_nationality = ["ایران", "فرانسه"];
  List<String> passenger_email = [
    "amirsamanrbuni@gmail.com",
    "aras8732@gmial.com"
  ];
  List<String> passenger_phone = ["۰۹۱۲۴۲۲۴۲۷۸", "۰۹۱۲۳۴۶۷۵۶۲"];
  String ticket_price = "۳۵,۰۷۲,۰۰۰";

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
                                      var tween = Tween(begin: begin, end: end)
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
                    ),],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  for (int i = BuyTicket.number_of_passenger_adult; i < BuyTicket.number_of_passenger_child + BuyTicket.number_of_passenger_adult; i++) {
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
                                      var tween = Tween(begin: begin, end: end)
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
                                  departure_city,
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
                                  arrival_city,
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
                                  airline_name,
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
                                  date_and_time_departure,
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
                                  flight_numberID,
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
                                  flight_class_type,
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
                                  baggage_allowance,
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
                                  special_request,
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
                                  refundability,
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
                            visible: has_return_flight,
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
                                          arrival_city,
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
                                          departure_city,
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
                                          return_airline_name,
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
                                          return_date_and_time_departure,
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
                                          return_flight_numberID,
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
                                          return_flight_class_type,
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
                                          return_baggage_allowance,
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
                                          return_special_request,
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
                                          return_refundability,
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
            Column(
                //
                children: mywidgets),
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
                                        Icons.security_update_warning_outlined,
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
            SizedBox(
              //etela resani
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const print_ticket(),
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
                            ticket_price,
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
