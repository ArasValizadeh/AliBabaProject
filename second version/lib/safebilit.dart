// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, overridden_fields, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, library_private_types_in_public_api, unused_import, import_of_legacy_library_into_null_safe, camel_case_types, avoid_print, unused_local_variable, prefer_interpolation_to_compose_strings, unrelated_type_equality_checks, must_be_immutable, unused_field, depend_on_referenced_packages, non_constant_identifier_names, unused_element
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/GlobalVariable.dart';
import 'package:flutter_application_1/mainpage.dart';
import 'package:flutter_application_1/pasenger.dart';
import 'package:flutter_application_1/search_flight.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

void main() {
  runApp(const safebilit());
}

final TextEditingController _controller_departure_city = TextEditingController(text: "");
final TextEditingController _controller_arrivals_city = TextEditingController(text: "");
final TextEditingController _controller_departure_date = TextEditingController(text: "");
final TextEditingController _controller_passenger_count = TextEditingController(text: "");
final TextEditingController _controller_return_departure_city = TextEditingController(text: "");
final TextEditingController _controller_return_arrivals_city = TextEditingController(text: "");
final TextEditingController _controller_return_departure_date = TextEditingController(text: "");

String _log = "";

late bool hastest;

class safebilit extends StatefulWidget {
  const safebilit({Key? key}) : super(key: key);

  @override
  State<safebilit> createState() => _safebilitState();
}

class _safebilitState extends State<safebilit> {
  int countState = 1;
  Type status = Type.two;
  String selectedCity = '';
  bool taghivmCondition = true;
  bool typeCondition = false;//dakheli khareji


  send_user_ticket_getter_info(String message) async {
    String request = message + "\u0000";
    print("request");

    await Socket.connect(ip_address, 8000).then((serverSocket) {
      print("connected");
      serverSocket.write(request);
      serverSocket.flush();
      print("write");
      serverSocket.listen((response) {
        print(String.fromCharCodes(response));
        setState(() {
          _log += String.fromCharCodes(response) + "\n";
        });
      });
    });
  }

  void setType(Type type) {
    setState(() {
      status = type;
    });
    if (type == Type.two) {
      setState(() {
        typeCondition = false;
        print("object");
      });
    } else {
      setState(() {
        typeCondition = true;
      });
    }
  }

  void setCount(int count) {
    setState(() {
      countState = count;
    });
    if (count == 1) {
      setState(() {
        taghivmCondition = true;
        has_return_flight = false;
      });
    } else {
      setState(() {
        taghivmCondition = false;
        has_return_flight = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        // Add more delegates as needed
      ],
      supportedLocales: [
        const Locale('fa', 'IR'), // Persian (Farsi)
        // Add more locales as needed
      ],
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    const main_page(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
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
                "پرواز",
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
          backgroundColor: Colors.orange,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(29),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AirItem(
                          isActive: status == Type.two,
                          type: Type.two,
                          ontap: () {
                            setType(Type.two);
                            setState(() {
                              has_return_flight = true;
                            });
                          },
                        ),
                        AirItem(
                          isActive: status == Type.one,
                          type: Type.one,
                          ontap: () {
                            setType(Type.one);
                            setState(() {
                              has_return_flight = false;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Count(
                        isActive: countState == 1,
                        type: 1,
                        ontap: () {
                          setCount(1);
                          setState(() {
                            main_stuff.has_return_flight = false;
                            print("only one way");
                          });

                        },
                      ),
                      Count(
                        isActive: countState == 2,
                        type: 2,
                        ontap: () {
                          setCount(2);
                          setState(() {
                            main_stuff.has_return_flight = true;
                          });
                          print("has return");
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1.12,
                  color: Color.fromARGB(31, 64, 63, 63),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 25, 0),
                            child: Text(
                              "مبدا",
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: typeCondition
                            ? MyDropdownMenu2()
                            : MyDropdownMenu(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 4, 25, 0),
                            child: Text(
                              "مقصد",
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: typeCondition
                            ? MyDropdownMenu2()
                            : MyDropdownMenu(),
                      ),
                      Divider(
                        thickness: 1.12,
                        color: Color.fromARGB(31, 64, 63, 63),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                          child: taghivmCondition
                              ? taghvim()
                              : Column(
                                  children: [
                                    taghvim(),
                                    taghivm2(),
                                  ],
                                )),
                      SizedBox(
                        height: 30,
                      ),
                      Divider(
                        thickness: 1.12,
                        color: Color.fromARGB(31, 64, 63, 63),
                      ),
                      ticketCounter(),
                      SizedBox(
                        height: 90,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: TextButton(
                          onPressed: () {
                            send_user_ticket_getter_info(_controller_departure_city.text + "-" + _controller_arrivals_city.text + "-" + _controller_departure_date.text + "-" +_controller_passenger_count.text);
                            print("info ticket ersaal shod");
                            if(has_return_flight){
                              send_user_ticket_getter_info(_controller_return_departure_city.text + "-" + _controller_return_arrivals_city.text + "-" + _controller_return_departure_date.text + "-" +_controller_passenger_count.text);
                              print("info ticket bargasht ham ersaal shod");
                            }
                          },
                          child: SizedBox(
                            width: 300,
                            child: FloatingActionButton.extended(
                              label: Text(
                                'جستجوی پرواز',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              backgroundColor: Colors.orange,
                              icon: Icon(
                                CupertinoIcons.search,
                                size: 25,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              onPressed: () {
                                setState(() {

                                });
                                //save information
                                
                                

                                 Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      const search_flight(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
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
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

enum Type {
  one,
  two,
}

class AirItem extends StatelessWidget {
  final Type type;
  final bool isActive;
  final Function() ontap;

  const AirItem({
    Key? key,
    required this.isActive,
    required this.type,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color textColor;
    String filed;
    if (type == Type.two) {
      filed = "پرواز داخلی";
      
    } else {
      filed = "پرواز خارجی";
    }
    if (isActive) {
      textColor = Colors.white;
    } else {
      textColor = Colors.black;
    }
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(25)),
      onTap: ontap,
      child: Container(
        width: 100,
        height: 50,
        decoration: isActive
            ? BoxDecoration(
                color: const Color.fromARGB(255, 46, 134, 211),
                borderRadius: BorderRadius.all(Radius.circular(25)),
              )
            : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(filed, style: TextStyle(fontSize: 15, color: textColor)),
          ],
        ),
      ),
    );
  }
}

class Count extends StatefulWidget {
  final int type;
  final bool isActive;
  final Function() ontap;

  const Count({
    Key? key,
    required this.isActive,
    required this.type,
    required this.ontap,
  }) : super(key: key);

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  @override
  Widget build(BuildContext context) {
    Color textColor;
    String filed;
    double underrechei;
    double underrecwid;
    Color undercol;
    if (widget.type == 1) {
      underrechei = 2;
      underrecwid = 50;
      filed = "یک طرفه";
    } else {
      underrechei = 2;
      underrecwid = 85;
      filed = "رفت و برگشت";
    }
    if (widget.isActive) {
      textColor = const Color.fromARGB(255, 46, 134, 211);
      undercol = const Color.fromARGB(255, 46, 134, 211);
    } else {
      textColor = Colors.black;
      undercol = Colors.white;
    }
    return InkWell(
      borderRadius: BorderRadius.all(Radius.zero),
      onTap: widget.ontap ,
      child: Container(
        width: 100,
        height: 40,
        decoration: widget.isActive
            ? BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)))
            : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(filed, style: TextStyle(fontSize: 18, color: textColor)),
            Container(
              height: underrechei,
              width: underrecwid,
              color: undercol,
            ),
          ],
        ),
      ),
    );
  }
}

class MyDropdownMenu2 extends StatefulWidget {
  const MyDropdownMenu2({
    Key? key,
  }) : super(key: key);

  @override
  State<MyDropdownMenu2> createState() => _MyDropdownMenuState2();
}

class _MyDropdownMenuState2 extends State<MyDropdownMenu2> {
  String? _selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 20),
      child: Container(
        width: 400,
        decoration: BoxDecoration(
          color: Color.fromARGB(159, 240, 245, 248),
          borderRadius: BorderRadius.circular(18.0),
          border: Border.all(color: Color.fromARGB(255, 136, 150, 152)),
        ),
        child: Row(
          children: [
            Expanded(
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: _selectedLocation,
                  hint: const Text(
                    "  شهر مورد نظر را انتخاب کنید",
                    style: TextStyle(fontSize: 13),
                  ),
                  isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      _selectedLocation = value;
                      BuyTicket.departure_city = value!;
                    });
                  },
                  icon: const SizedBox.shrink(),
                  items: [
                    CustomDropdownMenuItem<String>(
                      value: 'تهران',
                      label: 'تهران',
                    ),
                    CustomDropdownMenuItem<String>(
                      value: 'مشهد',
                      label: 'مشهد',
                    ),
                    CustomDropdownMenuItem<String>(
                      value: 'اصفهان',
                      label: 'اصفهان',
                    ),
                    CustomDropdownMenuItem<String>(
                      value: 'شیراز',
                      label: 'شیراز',
                    ),
                    CustomDropdownMenuItem<String>(
                      value: 'کرمانشاه',
                      label: 'کرمانشاه',
                    ),
                    CustomDropdownMenuItem<String>(
                      value: 'پاریس',
                      label: 'پاریس',
                    ),
                    CustomDropdownMenuItem<String>(
                      value: 'دبی',
                      label: 'دبی',
                    ),
                    CustomDropdownMenuItem<String>(
                      value: 'استانبول',
                      label: 'استانبول',
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(11, 16, 11, 16),
              child: Icon(CupertinoIcons.location_solid),
            ),
          ],
        ),
      ),
    );
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 8.0),
                Text(
                  label,
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 46, 134, 211)),
                ),
              ],
            ),
          ),
        );
}

class MyDropdownMenu extends StatefulWidget {
  const MyDropdownMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<MyDropdownMenu> createState() => _MyDropdownMenuState();
}

class _MyDropdownMenuState extends State<MyDropdownMenu> {
  String? _selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 20),
      child: Container(
        width: 400,
        decoration: BoxDecoration(
          color: Color.fromARGB(159, 240, 245, 248),
          borderRadius: BorderRadius.circular(18.0),
          border: Border.all(color: Color.fromARGB(255, 136, 150, 152)),
        ),
        child: Row(
          children: [
            Expanded(
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: _selectedLocation,
                  hint: const Text(
                    "  شهر مورد نظر را انتخاب کنید",
                    style: TextStyle(fontSize: 13),
                  ),
                  isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      if(main_stuff.has_return_flight){
                        
                      }
                      print(value);
                      _selectedLocation = value;
                    });
                  },
                  icon: const SizedBox.shrink(),
                  items: [
                    CustomDropdownMenuItem<String>(
                      value: 'تهران',
                      label: 'تهران',
                    ),
                    CustomDropdownMenuItem<String>(
                      value: 'مشهد',
                      label: 'مشهد',
                    ),
                    CustomDropdownMenuItem<String>(
                      value: 'اصفهان',
                      label: 'اصفهان',
                    ),
                    CustomDropdownMenuItem<String>(
                      value: 'شیراز',
                      label: 'شیراز',
                    ),
                    CustomDropdownMenuItem<String>(
                      value: 'کرمانشاه',
                      label: 'کرمانشاه',
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(11, 16, 11, 16),
              child: Icon(CupertinoIcons.location_solid),
            ),
          ],
        ),
      ),
    );
  }
}

class taghivm2 extends StatefulWidget {
  const taghivm2({super.key});

  @override
  State<taghivm2> createState() => _taghivm2State();
}

class _taghivm2State extends State<taghivm2> {
  TextEditingController dateController = TextEditingController();
  String selectedDate = Jalali.now().toJalaliDateTime();
  String label = 'تاریخ برگشت';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color.fromARGB(152, 253, 212, 90),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: Color.fromARGB(61, 17, 17, 17),
            width: 2,
          )),
      child: TextFormField(
        onTap: () async {
          Jalali? picked = await showPersianDatePicker(
              helpText: 'انتخاب تاریخ',
              context: context,
              initialDate: Jalali.now(),
              firstDate: Jalali(1395, 1),
              lastDate: Jalali(1410, 12),
              initialEntryMode: PDatePickerEntryMode.calendarOnly,
              initialDatePickerMode: PDatePickerMode.year,
              builder: (context, child) {
                return Theme(
                  data: ThemeData(
                    dialogTheme: const DialogTheme(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                  child: child!,
                );
              });
          if (picked != null && picked != selectedDate) {
            setState(() {
              dateController.text = 'تاریخ برگشت : '; //bargasht
              String day = picked.day.toString();
              String month = picked.month.toString();
              String year = picked.year.toString();
              BuyTicket.return_departure_date = year + "/" + month + "/" + day;
              print(year + "/" + month + "/" + day);
              if (month == "1") {
                month = "فروردین";
              } else if (month == "2") {
                month = "اردیبهشت";
              } else if (month == "3") {
                month = "خرداد";
              } else if (month == "4") {
                month = "تیر";
              } else if (month == "5") {
                month = "مرداد";
              } else if (month == "6") {
                month = "شهریور";
              } else if (month == "7") {
                month = "مهر";
              } else if (month == "8") {
                month = "آبان";
              } else if (month == "9") {
                month = "آذر";
              } else if (month == "10") {
                month = "دی";
              } else if (month == "11") {
                month = "بهمن";
              } else if (month == "12") {
                month = "اسفند";
              }
              dateController.text += year + ' - ' + month + ' - ' + day;
            });
          }
        },
        readOnly: true,
        controller: dateController,
        decoration: InputDecoration(
          hintText: label,
          border: InputBorder.none,
          prefixIcon: const Icon(CupertinoIcons.calendar_today),
        ),
      ),
    );
  }
}

class taghvim extends StatefulWidget {
  const taghvim({
    super.key,
  });

  @override
  State<taghvim> createState() => _taghvimState();
}

class _taghvimState extends State<taghvim> {
  TextEditingController dateController = TextEditingController();
  String selectedDate = Jalali.now().toJalaliDateTime();
  String label = 'تاریخ رفت';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color.fromARGB(152, 253, 212, 90),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: Color.fromARGB(61, 17, 17, 17),
            width: 2,
          )),
      child: TextFormField(
        onTap: () async {
          Jalali? picked = await showPersianDatePicker(
              helpText: 'انتخاب تاریخ',
              context: context,
              initialDate: Jalali.now(),
              firstDate: Jalali(1395, 1),
              lastDate: Jalali(1410, 12),
              initialEntryMode: PDatePickerEntryMode.calendarOnly,
              initialDatePickerMode: PDatePickerMode.year,
              builder: (context, child) {
                return Theme(
                  data: ThemeData(
                    dialogTheme: const DialogTheme(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                  child: child!,
                );
              });
          if (picked != null && picked != selectedDate) {
            setState(() {
              dateController.text = 'تاریخ رفت : ';
              String day = picked.day.toString();
              String month = picked.month.toString();
              String year = picked.year.toString();
              BuyTicket.departure_date = year + "/" + month + "/" + day;
              print("raft : " + year + "/" + month + "/" + day);
              if (month == "1") {
                month = "فروردین";
              } else if (month == "2") {
                month = "اردیبهشت";
              } else if (month == "3") {
                month = "خرداد";
              } else if (month == "4") {
                month = "تیر";
              } else if (month == "5") {
                month = "مرداد";
              } else if (month == "6") {
                month = "شهریور";
              } else if (month == "7") {
                month = "مهر";
              } else if (month == "8") {
                month = "آبان";
              } else if (month == "9") {
                month = "آذر";
              } else if (month == "10") {
                month = "دی";
              } else if (month == "11") {
                month = "بهمن";
              } else if (month == "12") {
                month = "اسفند";
              }
              dateController.text += year + ' - ' + month + ' - ' + day;
              print(dateController.text);
            });
          }
        },
        readOnly: true,
        controller: dateController,
        decoration: InputDecoration(
          hintText: label,
          border: InputBorder.none,
          prefixIcon: const Icon(CupertinoIcons.calendar_today),
        ),
      ),
    );
  }
}

class ticketCounter extends StatefulWidget {
  const ticketCounter({super.key});

  @override
  State<ticketCounter> createState() => _ticketCounterState();
}

class _ticketCounterState extends State<ticketCounter> {
  int _counter2 = 0;
  int _counter = 0;
  void increase2() {
    setState(() {
      if (_counter2 <= 9) {
        setState(() {
          BuyTicket.number_of_passenger_child++;
        });
        _counter2++;
      }
    });
  }

  void decrease2() {
    setState(() {
      if (_counter2 > 0) {
        setState(() {
          BuyTicket.number_of_passenger_child--;
        });
        _counter2--;
      }
    });
  }

  void increase() {
    setState(() {
      if (_counter <= 9) {
        setState(() {
          BuyTicket.number_of_passenger_adult++;
        });
        _counter++;
      }
    });
  }

  void decrease() {
    setState(() {
      if (_counter > 0) {
        setState(() {
          BuyTicket.number_of_passenger_adult--;
        });
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(159, 240, 245, 248),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color.fromARGB(255, 136, 150, 152)),
      ),
      width: 400,
      height: 130,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.airplane_ticket_outlined),
              Text(
                "تعداد مسافرین",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Spacer(flex: 1),
              Text("بزرگسال  : "),
              Text(
                '$_counter',
                style: TextStyle(color: Color.fromARGB(255, 6, 127, 225)),
              ),
              Spacer(flex: 23),
              TextButton(
                  onPressed: decrease,
                  child: Icon(Icons.remove_circle_outline_outlined)),
              TextButton(
                  onPressed: increase, child: Icon(CupertinoIcons.add_circled)),
            ],
          ), // This trailing comma makes auto-formatting nicer for build methods.
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Spacer(
                flex: 1,
              ),
              Text("خردسال  : "),
              Text(
                '$_counter2',
                style: TextStyle(color: Color.fromARGB(255, 8, 122, 214)),
              ),
              Spacer(
                flex: 23,
              ),
              TextButton(
                  onPressed: decrease2,
                  child: Icon(Icons.remove_circle_outline_outlined)),
              TextButton(
                  onPressed: increase2,
                  child: Icon(CupertinoIcons.add_circled)),
            ],
          ),
        ],
      ),
    );
  }
  
}
