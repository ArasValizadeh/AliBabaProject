// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, deprecated_member_use, avoid_unnecessary_containers, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GlobalVariable.dart';
import 'package:flutter_application_1/mainpage.dart';

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
    body: whole_page(context),
    backgroundColor: Color.fromARGB(255, 236, 242, 242),
  );
}

Widget whole_page(BuildContext context) {
  


  return Scaffold(
    backgroundColor: Color.fromARGB(255, 236, 242, 242),
    body: SingleChildScrollView(
      child: Form(
        key: formKey_passenger,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange[100],
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
                          hintText: "نام و نام خانوادگی : " + account_name,
                          hintStyle: TextStyle(fontSize: 20, fontFamily: "Brb"),
                          icon: Icon(
                            Icons.account_box_outlined,
                            color: Colors.orange,
                          ))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange[100],
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
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: "کد ملی : " + account_Id_number,
                        labelStyle: TextStyle(fontSize: 20, fontFamily: "Brb"),
                        icon: Icon(
                          Icons.numbers,
                          color: Colors.orange,
                        )),
                    validator: (value) {
                      if(value!.isEmpty){
                        return null;
                      }
                      if (value.isEmpty ||
                          !RegExp(r'^\d{10}$').hasMatch(value)) {
                        //regex must be checked
                        return "کد ملی نامعتبر است.";
                      } else {
                        account_Id_number = value;
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
                  color: Colors.orange[100],
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
                        labelText: "شماره موبایل : " + account_phone_number,
                        labelStyle: TextStyle(fontSize: 20, fontFamily: "Brb"),
                        icon: Icon(
                          Icons.phone_iphone,
                             color: Colors.orange,
                        )),
                    validator: (value) {
                      if(value!.isEmpty){
                        return null;
                      }
                      if (value.isEmpty ||
                          !RegExp(r'^\d{11}$').hasMatch(value)) {
                        //regex must be checked
                        return "شماره موبایل نامعتبر است.";
                      } else {
                        account_phone_number = value;
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
                  color: Colors.orange[100],
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
                        labelText: "آدرس ایمیل : " + account_email,
                        labelStyle: TextStyle(fontSize: 20, fontFamily: "Brb"),
                        icon: Icon(
                           Icons.vpn_key_outlined,
                             color: Colors.orange,
                        )),
                    validator: (value) {
                      if(value!.isEmpty){
                        return null;
                      }
                      if (value.isEmpty ||
                          !(RegExp(r'^(?=.*[aA].*[aA].*)(?=.*[01])[a-zA-Z0-9]{8,}$').hasMatch(value) || RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value))) {
                        //regex must be checked
                        return "ایمیل نامعتبر است.";
                      } else {
                        account_email = value;
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
                  color: Colors.orange[100],
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
                          hintText: "تاریخ تولد : " + account_birthday,
                          hintStyle: TextStyle(fontSize: 20, fontFamily: "Brb"),
                          icon: Icon(
                            Icons.change_circle_outlined,
                            color: Colors.orange,
                          ))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange[100],
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
                        labelText: "ویرایش کلمه عبور",
                        labelStyle: TextStyle(fontSize: 20, fontFamily: "Brb"),
                        icon: Icon(
                           Icons.vpn_key_outlined,
                             color: Colors.orange,
                        )),
                    validator: (value) {
                      if(value!.isEmpty){
                        return null;
                      }
                      if (value.isEmpty ||
                          !RegExp(r'^(?!.*\d{2})^(?=.*[aA].*[aA])(?=.*\d)[a-zA-Z0-9]{8,}$').hasMatch(value)) {
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
                  color: Colors.orange[100],
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
                          hintText:
                              "موجودی حساب : " + account_balance + " ریال",
                          hintStyle: TextStyle(fontSize: 20, fontFamily: "Brb"),
                          icon: Icon(
                            Icons.account_balance_wallet_outlined,
                            color: Colors.orange,
                          ))),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              width: double.maxFinite,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if(formKey_passenger.currentState!.validate()){
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
                  }
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
