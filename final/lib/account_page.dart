// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, deprecated_member_use, avoid_unnecessary_containers, unused_element, avoid_print, use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GlobalVariable.dart';
import 'package:flutter_application_1/mainpage.dart';

final TextEditingController _controller_name_set =
    TextEditingController(text: "");
final TextEditingController _controller_id_set =
    TextEditingController(text: "");
final TextEditingController _controller_phone_set =
    TextEditingController(text: "");
final TextEditingController _controller_email_set =
    TextEditingController(text: "");
final TextEditingController _controller_birthday_set =
    TextEditingController(text: "");
final TextEditingController _controller_password_set =
    TextEditingController(text: "");
final TextEditingController _controller__afzayesh_mojoodi_set =
    TextEditingController(text: "");
String _log = "";


void main() {
  runApp(const account_page());
}

class account_page extends StatefulWidget {
  const account_page({super.key});

  @override
  State<account_page> createState() => _account_pageState();
}

class _account_pageState extends State<account_page> {
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
      toolbarHeight: 50,
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
                icon: Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: Colors.black,
                ),
              ),
              Text(
                "جزئیات حساب کاربری",
                style: TextStyle(
                    fontFamily: "Brb",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          ),
        ],
      ),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 251, 162, 67),
      elevation: 10,
    ),
    body: page_changeinfo(),
    backgroundColor: Color.fromARGB(255, 236, 242, 242),
  );
}

class page_changeinfo extends StatefulWidget {
  const page_changeinfo({super.key});

  @override
  State<page_changeinfo> createState() => _page_changeinfoState();
}

class _page_changeinfoState extends State<page_changeinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromARGB(255, 236, 242, 242),
    body: SingleChildScrollView(
      child: Form(
        //key: formKey_passenger,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                      offset: Offset(1.0, 1.0),
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    //textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: "Brb", fontSize: 20),
                    decoration: InputDecoration(
                        hintText: "نام کاربری : " + main_stuff.login_username,
                        hintStyle: TextStyle(fontSize: 20, fontFamily: "Brb"),
                        icon: Icon(
                          Icons.account_box_outlined,
                          color: Colors.orange,
                        )),
                    controller: _controller_name_set,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                      offset: Offset(1.0, 1.0),
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "کد ملی : " + _controller_id_set.text,
                        labelStyle: TextStyle(fontSize: 20, fontFamily: "Brb"),
                        icon: Icon(
                          Icons.numbers,
                          color: Colors.orange,
                        )),
                    controller: _controller_id_set,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return null;
                      }
                      if (value.isEmpty ||
                          !RegExp(r'^\d{10}$').hasMatch(value)) {
                        //regex must be checked
                        return "کد ملی نامعتبر است.";
                      } else {
                        //account.account_Id_number = value;
                        return null;
                      }
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                      offset: Offset(1.0, 1.0),
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    //textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: "شماره موبایل : "  + _controller_phone_set.text,
                        labelStyle: TextStyle(fontSize: 20, fontFamily: "Brb"),
                        icon: Icon(
                          Icons.phone_iphone,
                          color: Colors.orange,
                        )),
                    controller: _controller_phone_set,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return null;
                      }
                      if (value.isEmpty ||
                          !RegExp(r'^\d{11}$').hasMatch(value)) {
                        //regex must be checked
                        return "شماره موبایل نامعتبر است.";
                      } else {
                        //account.account_phone_number = value;
                        return null;
                      }
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                      offset: Offset(1.0, 1.0),
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    //textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: "آدرس ایمیل : "  + _controller_email_set.text,
                        labelStyle: TextStyle(fontSize: 20, fontFamily: "Brb"),
                        icon: Icon(
                          Icons.vpn_key_outlined,
                          color: Colors.orange,
                        )),
                    controller: _controller_email_set,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return null;
                      }
                      if (value.isEmpty ||
                          !(RegExp(r'^(?=.*[aA].*[aA].*)(?=.*[01])[a-zA-Z0-9]{8,}$')
                                  .hasMatch(value) ||
                              RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                  .hasMatch(value))) {
                        //regex must be checked
                        return "ایمیل نامعتبر است.";
                      } else {
                        //account.account_email = value;
                        return null;
                      }
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                      offset: Offset(1.0, 1.0),
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    //textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: "Brb", fontSize: 20),
                    decoration: InputDecoration(
                        hintText: "تاریخ تولد : ",
                        hintStyle: TextStyle(fontSize: 20, fontFamily: "Brb"),
                        icon: Icon(
                          Icons.change_circle_outlined,
                          color: Colors.orange,
                        )),
                    controller: _controller_birthday_set,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                      offset: Offset(1.0, 1.0),
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    //textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: "ویرایش کلمه عبور:",
                        labelStyle: TextStyle(fontSize: 20, fontFamily: "Brb"),
                        icon: Icon(
                          Icons.vpn_key_outlined,
                          color: Colors.orange,
                        )),
                    controller: _controller_password_set,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return null;
                      }
                      if (value.isEmpty ||
                          !RegExp(r'^(?!.*\d{2})^(?=.*[aA].*[aA])(?=.*\d)[a-zA-Z0-9]{8,}$')
                              .hasMatch(value)) {
                        //regex must be checked
                        return "رمز عبور نامعتبر است.";
                      } else {
                        //change pass
                        return null;
                      }
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                      offset: Offset(1.0, 1.0),
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    // textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: "Brb", fontSize: 20),
                    decoration: InputDecoration(
                        hintText: "افزایش موجودی",
                        hintStyle: TextStyle(fontSize: 20, fontFamily: "Brb"),
                        icon: Icon(
                          Icons.account_balance_wallet_outlined,
                          color: Colors.orange,
                        )),
                    controller: _controller__afzayesh_mojoodi_set,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () async{
                  if(_controller_name_set.text != ""){
                    if(_controller__afzayesh_mojoodi_set.text != ""){
                      Future<String> future_user_info = send_user_info("ChangeClientInformation\n" + _controller_name_set.text + "-" + "Mojodi" + "-" + "p"  +_controller__afzayesh_mojoodi_set.text);
                      future_user_info.then((value) {
                        setState(() {
                          _log = value;
                        });
                      });
                    }
                    if(_controller_password_set.text != ""){
                      sleep(const Duration(milliseconds: 500));
                      Future<String> future_user_info = send_user_info("ChangeClientInformation\n" + _controller_name_set.text + "-" + "Password" + "-" +_controller_password_set.text);
                      future_user_info.then((value) {
                        setState(() {
                          _log = value;
                        });
                      });
                    }
                    if(_controller_phone_set.text != ""){
                      sleep(const Duration(milliseconds: 500));
                      Future<String> future_user_info = send_user_info("ChangeClientInformation\n" + _controller_name_set.text + "-" + "PhoneNumber" + "-" +_controller_phone_set.text);
                      future_user_info.then((value) {
                        setState(() {
                          _log = value;
                        });
                      });
                    }
                    if(_controller_birthday_set.text != ""){
                      sleep(const Duration(milliseconds: 500));
                      Future<String> future_user_info = send_user_info("ChangeClientInformation\n" + _controller_name_set.text + "-" + "TarikhTavalod" + "-" +  _controller_birthday_set.text);
                      future_user_info.then((value) {
                        setState(() {
                          _log = value;
                        });
                      });
                    }
                    if(_controller_id_set.text != ""){
                      sleep(const Duration(milliseconds: 500));
                      Future<String> future_user_info = send_user_info("ChangeClientInformation\n" + _controller_name_set.text + "-" + "CodeMeli" + "-"  +_controller_id_set.text);
                      future_user_info.then((value) {
                        setState(() {
                          print("id changed");
                          _log = value;
                        });
                      });
                    }
                    if(_controller_email_set.text != ""){
                      sleep(const Duration(milliseconds: 500));
                      Future<String> future_user_info = send_user_info("ChangeClientInformation\n" + _controller_name_set.text + "-" + "AddressEmail" + "-"  +_controller_email_set.text);
                      future_user_info.then((value) {
                        setState(() {
                          _log = value;
                        });
                      });
                    }
                  }

                  // if(formKey_passenger.currentState!.validate()){
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
                  // }
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "تایید",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Brb",
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.published_with_changes,
                              color: Colors.black,
                              size: 25,
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
  Future<String> send_user_info(String message) async {
    String res = "";
    String request = message + "\u0000";
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

