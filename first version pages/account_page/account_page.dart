

// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, deprecated_member_use, avoid_unnecessary_containers

import 'package:flutter/material.dart';


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
      home: Builder(builder: (context){
        return page(context);
      }),
    );
  }
}

Widget page(BuildContext context) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: status_icons(context)
  );
}


Widget status_icons(BuildContext context){
  return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 10,
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    //go to last page;
                  }, 
                  icon: Icon(Icons.arrow_back, size: 20,color: Colors.black,),
                ),
                Text("جزئیات حساب کاربری",
                style: TextStyle(fontFamily: "Brb",
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black),
                )
              ],
            ),
          ],
        ),
      ),
      body: whole_page(context)
    );
}

Widget whole_page(BuildContext context){

  String account_name = "سامان محسنی";
  String account_Id_number = "۰۲۲۴۶۷۸۹۲";
  String account_phone_number = "۰۹۱۲۱۲۶۷۸۳۴";
  String account_email = "mohseni@gmail.com";
  String account_birthday = "1382/07/14";
  String account_balance = " ۲۹۷۰۰۰۰۰۰";


  return Scaffold(
    backgroundColor: Color.fromARGB(255, 236, 242, 242),
    body: SingleChildScrollView(
      child: Column(
        children: [
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
                  textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: "Brb", fontSize: 20),
                    decoration: InputDecoration(
                    hintText: "نام و نام خانوادگی : " + account_name,
                    hintStyle: TextStyle(fontSize: 20,fontFamily: "Brb"),
                    icon: Icon(Icons.account_box_outlined,
                    color: Colors.orange,)
                    )
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
                  textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: "Brb", fontSize: 20),
                    decoration: InputDecoration(
                    hintText: "کد ملی : " + account_Id_number,
                    hintStyle: TextStyle(fontSize: 20,fontFamily: "Brb"),
                    icon: Icon(Icons.numbers,
                    color: Colors.orange,)
                    )
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
                  textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: "Brb", fontSize: 20),
                    decoration: InputDecoration(
                    hintText: "شماره موبایل : " + account_phone_number,
                    hintStyle: TextStyle(fontSize: 20,fontFamily: "Brb"),
                    icon: Icon(Icons.phone_iphone,
                    color: Colors.orange,)
                    )
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
                  textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: "Brb", fontSize: 20),
                    decoration: InputDecoration(
                    hintText: "آدرس ایمیل : " + account_email,
                    hintStyle: TextStyle(fontSize: 20,fontFamily: "Brb"),
                    icon: Icon(Icons.email_outlined,
                    color: Colors.orange,)
                    )
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
                  textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: "Brb", fontSize: 20),
                    decoration: InputDecoration(
                    hintText: "تاریخ تولد : " + account_birthday,
                    hintStyle: TextStyle(fontSize: 20,fontFamily: "Brb"),
                    icon: Icon(Icons.change_circle_outlined,
                    color: Colors.orange,)
                    )
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
                  textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: "Brb", fontSize: 20),
                    decoration: InputDecoration(
                    hintText: "ویرایش کلمه عبور",
                    hintStyle: TextStyle(fontSize: 20,fontFamily: "Brb"),
                    icon: Icon(Icons.vpn_key_outlined,
                    color: Colors.orange,)
                    )
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
                  textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: "Brb", fontSize: 20),
                    decoration: InputDecoration(
                    hintText: "موجودی حساب : " + account_balance + " ریال",
                    hintStyle: TextStyle(fontSize: 20,fontFamily: "Brb"),
                    icon: Icon(Icons.account_balance_wallet_outlined,
                    color: Colors.orange,)
                    )
                  ),
              ),
            ),
          ),

          SizedBox(
            height: 50,
            width: double.maxFinite,
          ),
           
          SizedBox(
              width: double.infinity,
              height: 80,
          
              child: 
                ElevatedButton(onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Background color
                ),
                child:
                  Column(
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("تایید",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Brb",
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(Icons.published_with_changes,
                                color: Colors.black,
                                size: 25,),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                    
                  ),
                ),
            ),
        
        ],
      ),
    ),
  );
}
