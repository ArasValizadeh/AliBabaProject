// ignore_for_file: file_names, non_constant_identifier_names, unused_element, camel_case_types

import 'dart:math';


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

  static String convert_city_to_english(String s) {
    switch (s) {
      case 'تهران':
        return 'tehran';
      case 'مشهد':
        return 'mashhad';
      case 'اصفهان':
        return 'isfahan';
      case 'شیراز':
        return 'shiraz';
      case 'کرمانشاه':
        return 'kermanshah';
      case 'پاریس':
        return 'paris';
      case 'دبی':
        return 'dubai';
      case 'استانبول':
        return 'istanbul';
    }
    return 'default city';
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
    passenger_list.clear();
  }

  static String total_price(){
    double per_person = double.parse(first_flight.price);
    if(main_stuff.has_return_flight){
      per_person += int.parse(return_flight.return_price);
    }
    double raft = per_person * (BuyTicket.number_of_passenger_adult);
    double bargasht = per_person * BuyTicket.number_of_passenger_child * 0.8;
    return (raft+bargasht).toString();
  }

}

class first_flight {
  static String departure_city = "";
  static String arrival_city = "";
  static String departure_date = "";
  static String departure_time = "";
  static String airline = "";
  static String price = "";
  static String seat_left = "";
  static List<List<String>> flight_raft_list = [];
  
  static clear_all(){
    departure_city = "";
    arrival_city = "";
    departure_date = "";
    departure_time = "";
    airline = "";
    price = "";
    seat_left = "";
    flight_raft_list.clear();
  }
}

class return_flight {
  static String return_departure_city = "";
  static String return_arrival_city = "";
  static String return_departure_date = "";
  static String return_departure_time = "";
  static String return_airline = "";
  static String return_price = "";
  static String return_seat_left = "";
  static List<List<String>> flight_bargasht_list = [];

  static clear_all(){
    return_departure_city = "";
    return_arrival_city = "";
    return_departure_date = "";
    return_departure_time = "";
    return_airline = "";
    return_price = "";
    return_seat_left = "";
    flight_bargasht_list.clear();
  }
  
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
