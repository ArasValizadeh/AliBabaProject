// ignore_for_file: file_names, non_constant_identifier_names, unused_element, camel_case_types

import 'dart:math';

import 'package:flutter/material.dart';

String ip_address = "10.191.224.120";

class main_stuff {
  static bool has_return_flight = false;
  static bool isLogin = false;
  static String login_username = "";
  static List<String> login_user_tarakonesh = [];
  static List<List<String>> my_trip_list = [];

  static clear_all() {
    has_return_flight = false;
    isLogin = false; //should be changed
    login_username = "";
  }

  static String generateRandomNumber(int min, int max) {
    Random random = Random();
    int randomNumber = random.nextInt(max - min + 1) + min;
    return randomNumber.toString();
  }

  static String convert_city_to_persion(String s) {
    switch (s) {
      case "tehran":
        return "تهران";
      case "mashhad":
        return "مشهد";
      case "isfahan":
        return "اصفهان";
      case "shiraz":
        return "شیراز";
      case "kermanshah":
        return "کرمانشاه";
      case "paris":
        return "پاریس";
      case "dubai":
        return "دبی";
      case "istanbul":
        return "استانبول";
    }
    return "شهر دیفالت";
  }

  static String convert_airline_to_icon(String s) {
    switch (s) {
      case "Mahan":
        return "assets/mahan.jpg";
      case "Zagros":
        return "assets/zagros.jpg";
      case "Iranair":
        return "assets/iranair.jpg";
      case "Aseman":
        return "assets/aseman.jpg";
    }
    return "assets/mahan.jpg";
  }

  static String convert_airline_to_persian(String s) {
    switch (s) {
      case "Mahan":
        return "ماهان";
      case "Zagros":
        return "زاگرس";
      case "Iranair":
        return "ایران ایر";
      case "Aseman":
        return "آسمان";
    }
    return "ناشناس";
  }
}

class BuyTicket {
  static String departure_city = "";
  static String arrival_city = "";
  static String departure_date = "";
  static int number_of_passenger_adult = 0;
  static int number_of_passenger_child = 0;
  static String return_departure_city = "";
  static String return_arrival_city = "";
  static String return_departure_date = "";
  static String passenger_email = "";
  static String passenger_phone = "";
  static List<List<String>> passenger_list = [];

  static clear_all() {
    departure_city = "";
    arrival_city = "";
    departure_date = "";
    number_of_passenger_adult = 0;
    number_of_passenger_child = 0;
    return_departure_city = "";
    return_arrival_city = "";
    return_departure_date = "";
    passenger_email = "";
    passenger_phone = "";
  }
}

class passenger_info{
  static String name = "";
  static String lastname = "";
  static String id_number = "";
  static String birthday = "";

  static clear_all_info(){
    name = "";
    lastname = "";
    id_number = "";
    birthday = "";
  }
}

final formkey_passenger_getinfo = GlobalKey<FormState>();
final formKey_passenger = GlobalKey<FormState>();

//account_page

class Account {
  List<String> account_transaction_list = ["-20000", "+400000", "+3425000"];
}

Account account = Account();

class Ticket {
  String? flightCapacity;
  String? flightPrice;
  String? airlineName;
  static String flightClassType = "اکونومی";
  String? departureCity;
  String? arrivalCity;
  String? departureTime;
  String? departureDate;

  Ticket({
    this.flightCapacity,
    this.flightPrice,
    this.airlineName,
    this.departureCity,
    this.arrivalCity,
    this.departureTime,
    this.departureDate,
  });
}

List<String> week_days = [
  "شنبه",
  "یکشنبه",
  "دوشنبه",
  "سه شنبه",
  "چهارشنبه",
  "پنج شنبه",
  "جمعه"
];
List<Ticket>? whole_tickets = [ticket_1];

Ticket ticket_1 = Ticket(
  flightCapacity: '10',
  flightPrice: '۱٫۲۵۰٫۰۰۰',
  airlineName: 'ماهان"',
  departureCity: 'تهران"',
  arrivalCity: 'مشهد"',
  departureTime: '۱۲:۳۰',
  departureDate: 'دوشنبه ۲۶ تیر"',
);

List<String> flight_capacity = ["2", "5", "7"];
List<String> flight_price = ["۱٫۲۵۰٫۰۰۰", "۹۷۰٫۰۰۰", "۱٫۴۰۰٫۰۰۰"];
List<String> airline_name = ["ماهان", "زاگرس", "ایران ایر"];
List<String> flight_class_type = ["اکونومی", "اکونومی", "بیزینس"];
List<String> departure_city = ["تهران", "کیش", "مشهد"];
List<String> arrival_city = ["مشهد", "تهران", "کیش"];
List<String> departure_time = ["۱۲:۳۰", "۱۳:۳۵", "۸:۵۰"];
List<String> departure_date = [
  "دوشنبه ۲۶ تیر",
  "چهارشنبه ۲۸ تیر",
  "جمعه ۳۰ تیر"
];
List<String> arrival_time = ["۲:۲۰", "۳:۱۵", "۱۰"];
List<String> airline_logo = [
  "assets/mahan.jpg",
  "assets/zagros.jpg",
  "assets/iranair.jpg"
];

//pasenger
int index = 0; //mige koodoom parvaz entekhab shode

String return_airline_name = "زاگرس";
String flight_numberID = "W5 1080";
String return_flight_numberID = "W5 1081";
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

String return_date = "شنبه ۳۱ تیر";
String return_airline_logo = "assets/zagros.jpg";
List<String> reservation_number = ["13452", "6432", "234"];

bool open_pasenger_list = false;

String? _selectedGender;
