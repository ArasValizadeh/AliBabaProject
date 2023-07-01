// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, avoid_print, prefer_typing_uninitialized_variables, deprecated_member_use, no_leading_underscores_for_local_identifiers, overridden_fields, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GlobalVariable.dart';
import 'package:flutter_application_1/mainpage.dart';

void main() {
  runApp(const my_trip());
}

class my_trip extends StatefulWidget {
  const my_trip({super.key});

  @override
  State<my_trip> createState() => _my_tripState();
}

class _my_tripState extends State<my_trip> {
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
                  Icons.home,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              Text(
                "بلیت های من",
                style: TextStyle(
                    fontFamily: "Brb",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          ),
        ],
      ),
    ),
    body: my_flights(),
    backgroundColor: Color.fromARGB(255, 236, 242, 242),
  );
}

class my_flights extends StatefulWidget {
  const my_flights({super.key});

  @override
  State<my_flights> createState() => _my_flightsState();
}

class _my_flightsState extends State<my_flights> {
  List<Widget> my_flight_list = [];
  List<String> paygiri = [];

  @override
  void initState() {
    super.initState();
    my_flight_list = _build_my_ticket();
  }
  //Aseman-dubai-tehran-18:25-1402/9/9-1
  List<Widget> _build_my_ticket() {
    List<Widget> ticket_list = [];
    for(int i = 0 ;i < main_stuff.my_trip_list.length; i++){
      paygiri.add(main_stuff.generateRandomNumber(1000, 10000));
    }
    for (int i = 0; i < main_stuff.my_trip_list.length; i++) {
      ticket_list.add(
        Container(
          color: Color.fromARGB(255, 236, 242, 242),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Color.fromARGB(255, 125, 122, 122),
                    width: 2,
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "شماره پیگیری : " + paygiri[i] ,
                                  style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 25,
                                      color: Colors.green[700],
                                      fontWeight: FontWeight.w100),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
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
                                      main_stuff.my_trip_list[i][4],
                                    style: TextStyle(
                                        fontFamily: "Brb",
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                )
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
                                        child: Image.asset(main_stuff.convert_airline_to_icon(main_stuff.my_trip_list[i][0])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          main_stuff.convert_airline_to_persian(main_stuff.my_trip_list[i][0]) ,
                                          style: TextStyle(
                                              fontFamily: "Brb",
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
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
                                              main_stuff.convert_city_to_persion(main_stuff.my_trip_list[i][1]),
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
                                              main_stuff.convert_city_to_persion(main_stuff.my_trip_list[i][2]),
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
                                            main_stuff.my_trip_list[i][3],
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
            ],
          ),
        ),
      );
    }
    return ticket_list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: my_flight_list,
        ),
      ),
    );
  }
}
