// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, avoid_print, prefer_typing_uninitialized_variables, deprecated_member_use, no_leading_underscores_for_local_identifiers, overridden_fields, prefer_interpolation_to_compose_strings, unused_import, use_key_in_widget_constructors, library_private_types_in_public_api

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GlobalVariable.dart';
import 'package:flutter_application_1/mainpage.dart';



void main() {
  runApp(const tarakonesh());
}

class tarakonesh extends StatefulWidget {
  const tarakonesh({super.key});

  @override
  State<tarakonesh> createState() => _tarakoneshState();
}

class _tarakoneshState extends State<tarakonesh> {
  
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
                "تراکنش های من",
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
    body: FlightWidget(),
    backgroundColor: Color.fromARGB(255, 236, 242, 242),
  );
}


class FlightWidget extends StatefulWidget {
  @override
  _FlightWidgetState createState() => _FlightWidgetState();
}

class _FlightWidgetState extends State<FlightWidget> {
  List<Widget> ticketList = [];

  @override
  void initState() {
    super.initState();
    ticketList = _buildTicketList();
  }

  List<Widget> _buildTicketList() {
    List<Widget> tempList = [];
    for (int i = 0; i < main_stuff.login_user_tarakonesh.length; i++) {
      tempList.add(
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
                    ),
                  ),
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
                                Row(
                                  children: [
                                    Text(
                                      "تراکنش : ",
                                      style: TextStyle(
                                        fontFamily: "Brb",
                                        fontSize: 25,
                                        color: Colors.blue[700],
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                    Text(
                                      main_stuff.login_user_tarakonesh[i],
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        fontFamily: "Brb",
                                        fontSize: 25,
                                        color: main_stuff.login_user_tarakonesh[i].startsWith('+') ? Colors.green[700] : Color.fromARGB(255, 172, 72, 64),
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                  ],
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
            ],
          ),
        ),
      );
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: ticketList,
        ),
      ),
    );
  }
}
