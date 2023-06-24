
// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';

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
                Text("تایید اطلاعات",
                style: TextStyle(fontFamily: "Brb",
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black),
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.flight,color: Colors.green,),
              Icon(Icons.navigate_next,color:Color.fromARGB(255, 89, 98, 89),),
              Icon(Icons.people_alt,color: Colors.green,),
              Icon(Icons.navigate_next,color:Color.fromARGB(255, 89, 98, 89),),
              Icon(Icons.list_outlined,color:Colors.green,),
              Text("تایید اطلاعات",style: TextStyle(fontFamily: "Brb",fontSize: 15,color: Colors.green,fontWeight: FontWeight.bold),),
              Icon(Icons.navigate_next,color:Color.fromARGB(255, 89, 98, 89),),
              Text("پرداخت",style: TextStyle(fontFamily: "Brb",fontSize: 15,color:Color.fromARGB(255, 89, 98, 89),fontWeight: FontWeight.bold),),
              Icon(Icons.navigate_next,color:Color.fromARGB(255, 89, 98, 89),),
              Text("صدور بلیط",style: TextStyle(fontFamily: "Brb",fontSize: 15,color:Color.fromARGB(255, 89, 98, 89),fontWeight: FontWeight.bold),),
            ],)
          ],
        ),
      ),
      body: whole_page(context)
    );
}

Widget whole_page(BuildContext context){

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
  bool has_return_flight = true;


  String passenger_name = "سامان رستم بیگی";
  String passenger_gender = "مرد";
  String passenger_nationalID = "۰۴۴۱۱۶۲۷۳۵";
  String passenger_birthday = "۱۳۸۲/۰۹/۲۲";
  String passenger_nationality = "ایران";
  String passenger_email = "amirsamanrbuni@gmail.com";
  String passenger_phone = "۰۹۱۲۴۲۲۴۲۷۸";
  String ticket_price = "۳۵,۰۷۲,۰۰۰";
  return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 125, 122, 122),
                  width: 2,
                )
              ),

              child: SizedBox(
                child: Column(
                  children: [
            
                    Row(
                      children: [
                        Icon(Icons.airplane_ticket_outlined,size: 30,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text("اطلاعات بلیط",
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
                          child: Text("بلیط رفت",
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
                          child: Text("مبدا ",
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
                          child: Text(departure_city,
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
                          child: Text("مقصد",
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
                          child: Text(arrival_city,
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
                          child: Text("شرکت هواپیمایی",
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
                          child: Text(airline_name,
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
                          child: Text("تاریخ و ساعت پرواز",
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
                          child: Text(date_and_time_departure,
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
                          child: Text("شماره پرواز",
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
                          child: Text(flight_numberID,
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
                          child: Text("کلاس پروازی",
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
                          child: Text(flight_class_type,
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
                          child: Text("مقدار بار مجاز",
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
                          child: Text(baggage_allowance,
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
                          child: Text("خدمات ویژه",
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
                          child: Text(special_request,
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
                          child: Text("قابلیت استرداد",
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
                          child: Text(refundability,
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
                    child: 
                      Column(children: [
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
                          child: Text("مبدا ",
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
                          child: Text(arrival_city,
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
                          child: Text("مقصد",
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
                          child: Text(departure_city,
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
                          child: Text("شرکت هواپیمایی",
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
                          child: Text(return_airline_name,
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
                          child: Text("تاریخ و ساعت پرواز",
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
                          child: Text(return_date_and_time_departure,
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
                          child: Text("شماره پرواز",
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
                          child: Text(return_flight_numberID,
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
                          child: Text("کلاس پروازی",
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
                          child: Text(return_flight_class_type,
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
                          child: Text("مقدار بار مجاز",
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
                          child: Text(return_baggage_allowance,
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
                          child: Text("خدمات ویژه",
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
                          child: Text(return_special_request,
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
                          child: Text("قابلیت استرداد",
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
                          child: Text(return_refundability,
                            style: TextStyle(
                              fontFamily: "Brb",
                              fontSize: 18,
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    ],)
                    )
                  ],
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
                )
              ),
          
              child: SizedBox(
                child: Column(
                  children: [
                    
                    Row(
                      children: [
                        Icon(Icons.people,size: 25,),

                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("مشخصات مسافران",
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
                          child: TextButton(onPressed: (){
                        
                          }, 
                            child: Text("ویرایش مسافران",
                            style: 
                              TextStyle(
                                color: Colors.blue,
                                fontFamily: "Brb",
                                fontSize: 15,
                              ),)
                          ),
                        )

                      ],
                    ),
                    
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                            color:Colors.black,
                            width: 1,
                            //style: BorderStyle.solid
                            )
                          ),
                          child: SizedBox(
                            width: 60,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("بزرگسال",
                              style: TextStyle(
                                fontFamily: "Brb",
                                fontSize: 15,
                                color: Colors.black,
                              ),),
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
                          child: Text("نام و نام خانوادگی",
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
                          child: Text(passenger_name,
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
                          child: Text("جنسیت",
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
                          child: Text(passenger_gender,
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
                          child: Text("کد ملی / شماره پاسپورت",
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
                          child: Text(passenger_nationalID,
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
                          child: Text("تاریخ تولد",
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
                          child: Text(passenger_birthday,
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
                          child: Text("ملیت",
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
                          child: Text(passenger_nationality,
                            style: TextStyle(
                              fontFamily: "Brb",
                              fontSize: 18,
                            ),
                            ),
                          ),
                        ),

                      ],
                    ),

                    // Visibility(
                    //   visible: true,
                    //    child: ,
                      
                      
                    // )
                  ],
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
                )
              ),
          
              child: SizedBox(
                child: Column(
                  children: [
                    
                    Row(
                      children: [
                        Icon(Icons.email,size: 25,),

                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("اطلاع رسانی سفر",
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
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: SizedBox(
                            width: 300,
                            child: Align(
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  Icon(Icons.security_update_warning_outlined,size: 20,color: Colors.brown,),

                                  Text("اطلاعات بلیط به این آدرس ارسال می شود.",
                                  style: TextStyle(
                                    fontFamily: "Brb",
                                    fontSize: 18,
                                    color: Colors.brown,
                                  ),),
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
                          child: Text("ایمیل",
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
                          child: Text(passenger_email,
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
                          child: Text("شماره موبایل",
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
                          child: Text(passenger_phone,
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


          SizedBox(
            width: double.infinity,
            height: 80,
            child: 
              ElevatedButton(onPressed: () {
                
              },
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("پرداخت آنلاین",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Brb",
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                  
                        Expanded(child: Container()),
                  
                        Text(ticket_price,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Brb",
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),),
                        Text("ریال",
                        style:TextStyle(
                          color: Color.fromARGB(255, 50, 43, 43),
                          fontSize: 15,
                          fontFamily: "Brb",
                          fontWeight: FontWeight.bold
                        ) )
                      ],
                      
                    ),
                  ),
                
                  // Text("پرداخت آنلاین",
                  // style: TextStyle(
                  //   fontFamily: "Brb",
                  //   fontSize: 20,
                  //   color: Colors.black,
                  //   fontWeight: FontWeight.bold,

                  // ),)
                ],
              ),
              ),
          )




        ],
      ),
    ),
  );
}




