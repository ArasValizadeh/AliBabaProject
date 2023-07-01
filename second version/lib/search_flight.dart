// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, avoid_print, prefer_typing_uninitialized_variables, deprecated_member_use, no_leading_underscores_for_local_identifiers, overridden_fields, unused_import, prefer_adjacent_string_concatenation, prefer_interpolation_to_compose_strings, unused_element, prefer_const_constructors_in_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GlobalVariable.dart';
import 'package:flutter_application_1/confirm_page.dart';
import 'package:flutter_application_1/mainpage.dart';
import 'package:flutter_application_1/pasenger.dart';
import 'package:flutter_application_1/safebilit.dart';
import 'package:flutter_application_1/search_flight.dart';
import 'package:flutter_application_1/search_flight_return.dart';

final TextEditingController _controller = TextEditingController(text: "");
String _log = "";

String template2 = "Salam";

void main() {
  runApp(const search_flight());
}

class day_list extends StatefulWidget {
  const day_list({super.key});

  @override
  State<day_list> createState() => _day_listState();
}


class HorizontalListView extends StatelessWidget {

  HorizontalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 30,
            color: Colors.grey[300],
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black54,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: week_days.length,
              separatorBuilder: (context, index) => const VerticalDivider(
                indent: 8,
                endIndent: 8,
                thickness: 1,
                color: Colors.black,
              ),
              itemBuilder: (context, index) => SizedBox(
                width: 80,
                child: Center(
                  child: TextButton(
                    onPressed: () { 
                      print(week_days[index]);
                      //go to that page
                     },
                    child: Text(
                      week_days[index],
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }
}


class _day_listState extends State<day_list> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: week_days.length,
        itemBuilder: (context, index) {
          String day = week_days[index];
          return GestureDetector(
            onTap: () {
              // Handle day selection here
              print("Selected day: $day");
            },
            child: Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                day,
                style: TextStyle(fontSize: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}

class search_flight extends StatefulWidget {
  const search_flight({super.key});

  @override
  State<search_flight> createState() => _search_flightState();
}

class _search_flightState extends State<search_flight> {
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
              //todo
              //refresh whole
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
      textDirection: TextDirection.rtl, child: status_icon());
}
class status_icon extends StatefulWidget {
  const status_icon({super.key});

  @override
  State<status_icon> createState() => _status_iconState();
}

class _status_iconState extends State<status_icon> {
  @override
  Widget build(BuildContext context) {
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
                  setState(() {
                    BuyTicket.clear_all();
                  });
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
                "انتخاب پرواز",
                style: TextStyle(
                    fontFamily: "Brb",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Expanded(child: Container()),
              IconButton(
                  onPressed: () {
                    setState(() {
                    BuyTicket.clear_all();
                    });
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
    body: whole_search(context),
    backgroundColor: Color.fromARGB(255, 236, 242, 242),
  );

  }
}



class setFlight extends StatefulWidget {
  const setFlight({super.key});

  @override
  State<setFlight> createState() => _setFlightState();
}

class _setFlightState extends State<setFlight> {
  void setFlight_var(String s) {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Widget whole_search(BuildContext context) {
  send_ticket_selected(String message) async {
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

  List<Widget> flight_info = [];
  for (int i = 0; i < flight_price.length; i++) {
    flight_info.add(Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          print("it has return flight");
          print(i);
          //one one them will be used
          // send_ticket_selected(departure_city[i] + "-" + arrival_city[i] + "-" + departure_date[i] + "-" + departure_time[i] + "-" + arrival_time[i] + "-" + airline_name[i]);
          // send_ticket_selected(i.toString());

          //todo
          //save flight details
          //save i index
          if (main_stuff.has_return_flight == true) {
            Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    search_flight_return(),
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
          } else {
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
          }
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
                        width: 60,
                        height: 60,
                        child: Image.asset(airline_logo[i]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          airline_name[i],
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
                                  Text(
                                    departure_city[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    departure_time[i],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_back_rounded,
                              textDirection: TextDirection.ltr,
                              size: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    arrival_city[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    arrival_time[i],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
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
                                      flight_class_type[i],
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
                    flight_capacity[i] + " صندلی باقی مانده",
                    style: TextStyle(
                        fontFamily: "Brb",
                        fontSize: 20,
                        color: Colors.grey[700]),
                  ),
                  Expanded(child: Container()),
                  Text(
                    flight_price[i],
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

  return Scaffold(
      body: SingleChildScrollView(
    child: Column(
      children: [
        //add listview
        HorizontalListView(),
        
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
