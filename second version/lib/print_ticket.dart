// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, avoid_print, prefer_typing_uninitialized_variables, deprecated_member_use, no_leading_underscores_for_local_identifiers, overridden_fields, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GlobalVariable.dart';
import 'package:flutter_application_1/mainpage.dart';

void main() {
  runApp(const print_ticket());
}

class print_ticket extends StatefulWidget {
  const print_ticket({super.key});

  @override
  State<print_ticket> createState() => _print_ticketState();
}

class _print_ticketState extends State<print_ticket> {
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
                "صدور بلیت",
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
              Icon(
                Icons.navigate_next,
                color: Color.fromARGB(255, 89, 98, 89),
              ),
              Text(
                "پرداخت",
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
              Icon(
                Icons.airplane_ticket_rounded,
                color: Colors.green[800],
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
    body: print_flight(context),
    backgroundColor: Color.fromARGB(255, 236, 242, 242),
  );
}

Widget print_flight(BuildContext context) {
  

  return Scaffold(
    body: SingleChildScrollView(
      child: Container(
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
                    height: 100,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "خرید شما با موفقیت انجام شد.",
                          style: TextStyle(
                              fontFamily: "Brb",
                              fontSize: 25,
                              color: Colors.green[700],
                              fontWeight: FontWeight.w100),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("شماره پیگیری : " + reservation_number,
                              style: TextStyle(
                                fontFamily: "Brb",
                                fontSize: 25,
                                color: Colors.green[700],
                                fontWeight: FontWeight.w100),)
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
                                alignment: Alignment.center,
                                child: Text(
                                  date_departure,
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                //airline axs + name
                                Column(
                                  children: [
                                    SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: Image.asset(airline_logo),
                                    ),
                                    Text(
                                      airline_name,
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
                                            departure_city,
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
                                            arrival_city,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Text(
                                          date_and_time_departure,
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
                                        child: Image.asset(return_airline_logo),
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
                                              arrival_city,
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
                                              departure_city,
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
                                            return_date_and_time_departure,
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
          ],
        ),
      ),
    ),
  );
}
