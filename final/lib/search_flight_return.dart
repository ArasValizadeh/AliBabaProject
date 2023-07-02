// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, avoid_print, prefer_typing_uninitialized_variables, deprecated_member_use, no_leading_underscores_for_local_identifiers, overridden_fields, unused_import, prefer_adjacent_string_concatenation, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GlobalVariable.dart';
import 'package:flutter_application_1/confirm_page.dart';
import 'package:flutter_application_1/mainpage.dart';
import 'package:flutter_application_1/pasenger.dart';
import 'package:flutter_application_1/safebilit.dart';
import 'package:flutter_application_1/search_flight.dart';

void main() {
  runApp(const search_flight_return());
}

class search_flight_return extends StatefulWidget {
  const search_flight_return({super.key});

  @override
  State<search_flight_return> createState() => _search_flight_returnState();
}

class _search_flight_returnState extends State<search_flight_return> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return search_page(context);
      }),
    );
  }
}

class search_sort extends StatefulWidget {
  const search_sort({super.key});

  @override
  State<search_sort> createState() => _search_sortState();
}

class _search_sortState extends State<search_sort> {
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: _selectedGender,
          hint: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.sort,
                  size: 20,
                ),
                Text(
                  "مرتب سازی",
                  style: TextStyle(
                      fontFamily: "Brb",
                      fontSize: 15,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w100),
                ),
              ],
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
              value: 'قیمت',
              label: 'قیمت',
            ),
            CustomDropdownMenuItem<String>(
              value: 'ساعت',
              label: 'ساعت',
            ),
          ],
        ),
      ),
    );
  }
}

Widget search_page(BuildContext context) {
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
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              Text(
                "انتخاب پرواز برگشت",
                style: TextStyle(
                    fontFamily: "Brb",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Expanded(child: Container()),
              IconButton(
                  onPressed: () {
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
                  },
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.flight,
                color: Colors.green[800],
              ),
              Text(
                "پرواز",
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
                "مسافران",
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
    body: whole_return_page(),
    backgroundColor: Color.fromARGB(255, 236, 242, 242),
  );
}

class whole_return_page extends StatefulWidget {
  const whole_return_page({super.key});

  @override
  State<whole_return_page> createState() => _whole_return_pageState();
}

class _whole_return_pageState extends State<whole_return_page> {
  List<Widget> flight_info = [];

  @override
  void initState() {
    super.initState();
    flight_info = _flight_return_info_build();
  }

  List<Widget> _flight_return_info_build() {
    for (int i = 0; i < return_flight.flight_bargasht_list.length; i++) {
      flight_info.add(Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () {
            print("it has return flight");
            print(i);

            setState(() {
              return_flight.return_departure_city =
                  first_flight.flight_raft_list[i][1];
              return_flight.return_arrival_city =
                  first_flight.flight_raft_list[i][2];
              return_flight.return_departure_date =
                  first_flight.flight_raft_list[i][4];
              return_flight.return_departure_time =
                  first_flight.flight_raft_list[i][3];
              return_flight.return_price = first_flight.flight_raft_list[i][5];
              return_flight.return_airline =
                  first_flight.flight_raft_list[i][0];
            });
            //save flight details
            //save i index

            Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    pasenger(),
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
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  color: Color.fromARGB(255, 125, 122, 122),
                  width: 2,
                )),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                  child: Column(children: [
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: Image.asset(main_stuff.convert_airline_to_icon(
                              return_flight.flight_bargasht_list[i][0])),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            main_stuff.convert_airline_to_persian(
                                return_flight.flight_bargasht_list[i][0]),
                            style: TextStyle(
                                fontFamily: "Brb",
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          main_stuff.convert_city_to_persion(
                                              return_flight.flight_bargasht_list[i]
                                                  [1]),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_back_rounded,
                                          textDirection: TextDirection.ltr,
                                          size: 30,
                                        ),
                                        Text(
                                          main_stuff.convert_city_to_persion(
                                              return_flight.flight_bargasht_list[i]
                                                  [2]),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          return_flight.flight_bargasht_list[i][3],
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: SizedBox(
                                width: 80,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          Icons.published_with_changes_rounded,
                                          size: 20,
                                          color: Colors.blue[900],
                                        ),
                                      ),
                                      Text(
                                        "سیستمی",
                                        style: TextStyle(
                                            fontFamily: "Brb",
                                            fontSize: 15,
                                            color: Colors.blue[900],
                                            fontWeight: FontWeight.w100),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: SizedBox(
                                width: 80,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: Icon(
                                            Icons.airline_seat_recline_normal,
                                            size: 20,
                                            color: Colors.blue[900],
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "اکونومی",
                                        style: TextStyle(
                                            fontFamily: "Brb",
                                            fontSize: 15,
                                            color: Colors.blue[900],
                                            fontWeight: FontWeight.w100),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Color.fromARGB(255, 92, 90, 90),
                  indent: 0,
                  endIndent: 0,
                ),
                Row(
                  children: [
                    Text(
                      return_flight.flight_bargasht_list[i][6] + " صندلی باقی مانده",
                      style: TextStyle(
                          fontFamily: "Brb",
                          fontSize: 20,
                          color: Colors.grey[700]),
                    ),
                    Expanded(child: Container()),
                    Text(
                      return_flight.flight_bargasht_list[i][5],
                      style: TextStyle(
                          fontFamily: "Brb",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[700]),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 4, 4, 0),
                      child: Text(
                        "تومان",
                        style: TextStyle(
                            fontFamily: "Brb",
                            fontSize: 15,
                            color: Colors.grey[700]),
                      ),
                    )
                  ],
                )
              ]) //inja bayad takmil beshe
                  ),
            ),
          ),
        ),
      ));
    }
    return flight_info;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          //add listview

          Padding(
            //
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  Icons.system_security_update_warning_outlined,
                  size: 20,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "قیمت برای هر بزرگسال محاسبه شده است.",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                )
              ],
            ),
          ),

          search_sort(),

          Column(
            children: flight_info,
          )
        ],
      ),
    ));
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
