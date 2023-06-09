
// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, avoid_print, prefer_typing_uninitialized_variables, deprecated_member_use, no_leading_underscores_for_local_identifiers, overridden_fields

import 'package:flutter/material.dart';


void main() {
  runApp(const pasenger());
}

class pasenger extends StatefulWidget {
  const pasenger({super.key});

  @override
  State<pasenger> createState() => _pasengerState();
}

class _pasengerState extends State<pasenger> {
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
                Text("مشخصات مسافران",
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
              Text("مسافران",style: TextStyle(fontFamily: "Brb",fontSize: 15,color: Colors.green,fontWeight: FontWeight.bold),),
              Icon(Icons.navigate_next,color:Color.fromARGB(255, 89, 98, 89),),
              //Icon(Icons.list_outlined,color:Colors.green,),
              Text("تایید اطلاعات",style: TextStyle(fontFamily: "Brb",fontSize: 15,color:Color.fromARGB(255, 89, 98, 89),fontWeight: FontWeight.bold),),
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

  
  String date_departure = "دوشنبه ۲۶ تیر";
  String return_date = "شنبه ۳۱ تیر";
  String airline_logo = "assets/mahan.jpg";
  String return_airline_logo = "assets/zagros.jpg";

  bool open_pasenger_list = false;

  String? _selectedGender;

  

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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      //first line
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
                        children: [
                
                        Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[100],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            // border: Border.all(
                            //   color:Colors.black,
                            //   width: 1,
                            //   //style: BorderStyle.solid
                            //   )
                            ),
                            child: SizedBox(
                              width: 80,
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(Icons.check_circle_rounded,
                                      size: 20,
                                      color: Colors.blue[900],
                                      ),
                                    ),

                                    Text("بلیط رفت",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 15,
                                      color: Colors.blue[900],
                                      fontWeight: FontWeight.w100
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        ),
                
                        Align(
                          alignment: Alignment.center,
                          child: Text(date_departure,
                          style: TextStyle(fontFamily: "Brb",
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                

                
                        MaterialButton(
                          
                          onPressed: () { 
                              //return to last page
                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              child: Row(children: [
                                
                                
                                Text("تغییر بلیط",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                )
                                ,
                            
                
                                Icon(Icons.change_circle_outlined,
                                color: Colors.blue,
                                size: 20,
                                ),
                                
                            
                              ],),
                            ),
                          ),
                        ),
                
                        ],
                      ),
                      //second line
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //airline axs + name
                            Column(children: [
                      
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: 
                                  Image.asset(airline_logo),
                              ),
                              
                              Text(airline_name,
                              style: TextStyle(
                                fontFamily: "Brb",
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),)
                            ],),
                        

                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Text(departure_city,
                                        style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        ),
                                      ),
                                    
                                      Icon(Icons.arrow_back_rounded,
                                        textDirection: TextDirection.ltr,
                                      ),
                            
                                      Text(arrival_city,
                                        style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                            
                            
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(date_and_time_departure,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                              ],),
                            ),
                        
                        ],),
                      ),
                    ]
                  ),
                ),
              )
            )
          ),            
        
          Visibility(
            visible: has_return_flight,
            child: 

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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      //first line
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
                        children: [
                
                        Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[100],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
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
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(Icons.check_circle_rounded,
                                      size: 20,
                                      color: Colors.blue[900],
                                      ),
                                    ),

                                    Text("بلیط برگشت",
                                    style: TextStyle(
                                      fontFamily: "Brb",
                                      fontSize: 15,
                                      color: Colors.blue[900],
                                      fontWeight: FontWeight.w100
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        ),
                
                        Align(
                          alignment: Alignment.center,
                          child: Text(return_date,
                          style: TextStyle(fontFamily: "Brb",
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                

                
                        MaterialButton(
                          
                          onPressed: () { 
                              //return to last page
                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              child: Row(children: [
                                
                                
                                Text("تغییر بلیط",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                )
                                ,
                            
                
                                Icon(Icons.change_circle_outlined,
                                color: Colors.blue,
                                size: 20,
                                ),
                                
                            
                              ],),
                            ),
                          ),
                        ),
                
                        ],
                      ),
                      //second line
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //airline axs + name
                            Column(children: [
                      
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: 
                                  Image.asset(return_airline_logo),
                              ),
                              
                              Text(return_airline_name,
                              style: TextStyle(
                                fontFamily: "Brb",
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),)
                            ],),
                        

                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Text(arrival_city,
                                        style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        ),
                                      ),
                                    
                                      Icon(Icons.arrow_back_rounded,
                                        textDirection: TextDirection.ltr,
                                      ),
                            
                                      Text(departure_city,
                                        style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                            
                            
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(return_date_and_time_departure,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                              ],),
                            ),
                        
                        ],),
                      ),
                    ]
                  ),
                ),
              )
            )
          ),            
        

        ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Icon(Icons.people,
                size: 30,
                color: Colors.black,
              ),
          
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("مشخصات مسافران",
                style: TextStyle(
                  fontFamily: "Brb",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),),
              )
          
          
            ],),
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

              child: ExpansionTile(
                title: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text("نام و نام خانوادگی",
                              style: TextStyle(fontFamily: "Brb",
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                  child: Text("شماره ملی / پاسپورت",
                                  style: TextStyle(fontFamily: "Brb",
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 87, 82, 82)),
                                  ),
                                ),
                              ],

                            ),
                          ),

                          Expanded(child: Container()),

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
                                        fontSize: 15,                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                ),
                              ),
                            ),
                          ),
                    ]
                  ),
                
                children:[
                  pasenger_infoget(context),
                ]
                
                ),
              
             ),
            )
              
          ),
          
          SizedBox(
              width: double.infinity,
              height: 150,
          
              child: 
                ElevatedButton(onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Background color
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                            Row(
                              children: [
                                
                                Icon(Icons.warning_amber_outlined,
                                size: 15,
                                color: Colors.black,
                                ),
                
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("با ادامه قوانین سایت و قوانین پرواز موافقت کرده اید.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Brb",
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ),
                              ],
                            ),
                
                          Row(
                            children: [
                              Text("مجموع قیمت",
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
                                color: Colors.blue[800],
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
                        
                          Container(
                            
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: SizedBox(
                                height: 40,
                                width: double.infinity,
                                
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("تایید و ادامه پرداخت",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Brb",
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
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
  );
}

class genderBox extends StatefulWidget {
  const genderBox({super.key});

  @override
  State<genderBox> createState() => _genderBoxState();
}

class _genderBoxState extends State<genderBox> {

  String? _selectedGender;
  
  String? value;

  void updateGender(String s){
    setState(() {
      _selectedGender = s;
    });
  }

  @override
  Widget build(BuildContext context) {
    return 
      Row(
          children: [
            Container(
              
            child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(
                    color:Color.fromARGB(255, 91, 84, 84),
                    width: 1,
                    )
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _selectedGender,
                        hint: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            "جنسیت",
                            style: TextStyle(fontFamily: "Brb", fontSize: 20,),
                          ),
                        ),
                        isExpanded: true,
                        onChanged: (value){
                          setState(() {
                            _selectedGender = value;
                          });
                        },

                        icon: const SizedBox.shrink(),
                        items: [
                          CustomDropdownMenuItem<String>(
                            value: 'مرد',
                            label: 'مرد',
                          ),
                          CustomDropdownMenuItem<String>(
                            value: 'زن',
                            label: 'زن',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
}
}

pasenger_infoget(BuildContext context) {
  var _selectedGender;
  return Column(children: [

         
     Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(
            color:Color.fromARGB(255, 91, 84, 84),
            width: 1,
          )
        ),
    
        child: Padding(
          padding: EdgeInsets.all(10),
            child: TextField(
              textAlign: TextAlign.right,
                style: TextStyle(fontFamily: "Brb", fontSize: 20),
                decoration: InputDecoration(
                hintText: "نام",
                hintStyle: TextStyle(fontSize: 20,fontFamily: "Brb")
                )),
              ),
      ),
    ),
  
     Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(
            color:Color.fromARGB(255, 91, 84, 84),
            width: 1,
          )
        ),
    
        child: Padding(
          padding: EdgeInsets.all(10),
            child: TextField(
              textAlign: TextAlign.right,
                style: TextStyle(fontFamily: "Brb", fontSize: 20),
                decoration: InputDecoration(
                hintText: "نام خانوادگی",
                hintStyle: TextStyle(fontSize: 20,fontFamily: "Brb")
                )),
              ),
      ),
    ),
  

      Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(
            color:Color.fromARGB(255, 91, 84, 84),
            width: 1,
          )
        ),
    
        child: Padding(
          padding: EdgeInsets.all(10),
            child: TextField(
              textAlign: TextAlign.right,
                style: TextStyle(fontFamily: "Brb", fontSize: 20),
                decoration: InputDecoration(
                hintText: "کد ملی",
                hintStyle: TextStyle(fontSize: 20,fontFamily: "Brb")
                )),
              ),
      ),
    ),
  
      genderBox(),

      
 
    //birthday


  
  ],);
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
                  style: TextStyle(
                      fontSize: 18, color: Colors.black),
                ),
              ],
            ),
          ),
        );
}
