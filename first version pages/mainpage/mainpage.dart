// ignore_for_file: camel_case_types, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_local_variable, empty_statements, unnecessary_new

import 'package:flutter/material.dart';

void main() {
  runApp(const main_page());
}

class main_page extends StatefulWidget {
  const main_page({super.key});

  @override
  State<main_page> createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context){
        return banner(context);
      }),
    );}
}

Widget banner(BuildContext context){
  return 
  Scaffold(
    resizeToAvoidBottomInset: false,
    appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.travel_explore,
              color: Colors.black,
              size: 50
            ),
            const SizedBox(width: 2),
            Text("alibaba",
              style: TextStyle(
                fontFamily: "Brb",
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    body: main_items(context),

  );
}

Widget main_items(BuildContext context) {
  return Column(
    children: [
      Center(
        child: SizedBox(
          width: 400,
          height: 500,
          child: Center(
            child: Scaffold(
              body: FractionallySizedBox(
              heightFactor: 1/2, // Set the height factor to 1/3 of the available height
              child: Align(
                alignment: Alignment.topCenter,
                child: GridView.count(
                  crossAxisCount: 3, 
                  children: [
                    buildItem("هتل",widthbox: 50, heightbox: 20),
                    buildItem("قطار" ,widthbox: 50, heightbox: 20),
                    buildItem("پرواز",widthbox: 50, heightbox: 20),
                    buildItem("اتوبوس" ,widthbox: 50, heightbox: 20),
                    buildItem("ویلا",widthbox: 50, heightbox: 20),
                    buildItem("تور" ,widthbox: 50, heightbox: 20),
                  ],
                ),
              ),
            ),
            ),
          ),
        ),
      ),
      
      Padding(
        padding: const EdgeInsets.fromLTRB(0,110, 0, 0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: 400,
            height: 120,
            child:
              ButtonBanner(context)),
        ),
      )
    ],
  );
}


Widget ButtonBanner(BuildContext context){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.orangeAccent,
      bottomNavigationBar: BottomAppBar(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.account_circle_outlined,
                  size: 30,),
        
                  TextButton(
                    onPressed:(){

                    }, 
                    child: Text("حساب کاربری",
                      style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Brb",
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      ),
                  ),)
                ],
              ),
        
              SizedBox(
                width: 20,
              ),
        
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.backpack_outlined,
                  size: 30,),

                  TextButton(
                    onPressed:(){

                    }, 
                    child: Text("سفرهای من",
                      style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Brb",
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    ),
                  )
                ],
              ),
        
              SizedBox(
                width: 15,
              ),
        
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.published_with_changes_rounded,
                  size: 30,),
        
                  TextButton(
                    onPressed:(){

                    }, 
                    child: Text("پلاس",
                      style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Brb",
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )
                  )
                ],
              ),
        
              SizedBox(
                width: 15,
              ),
        
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.house_sharp,
                  size: 30,),
        
                  TextButton(
                    onPressed:(){

                    }, 
                    child: Text("خانه",
                      style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Brb",
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      ),
                    )
                  )
                ],
              ),
        
            ],
          ),
        )
      ,)
    )
  );       
}


Widget buildItem(String transportaion ,{required double widthbox, required double heightbox}){
  IconData iconData;
  if(transportaion == "قطار"){
    iconData = Icons.train;
  }else if(transportaion == "پرواز"){
    iconData = Icons.flight_rounded;
  }else if(transportaion == "هتل"){
    iconData = Icons.hotel;
  }else if(transportaion == "اتوبوس"){
    iconData = Icons.train_outlined;
  }else if(transportaion == "ویلا"){
    iconData = Icons.house;
  }else{
    iconData = Icons.backpack;
  };

  return GestureDetector(
      child: Container(
        width: widthbox,
        height: heightbox,
        margin: EdgeInsets.all(4),
        padding: EdgeInsets.all(4),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
              onPressed: (){
                //bere safhe marboote
              },
              child: Text(transportaion,
                style: TextStyle(
                  fontFamily: "Brb",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:Colors.black,
                ),
              ),
              ),
            ),
            const SizedBox(width: 1),
            Icon(iconData,
              size: 30,
            ),
          ]
        )
    ),
  );
}

Widget main_menu(BuildContext context){
  return 
  Center(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color.fromRGBO(100, 100, 100, 1),
            offset: Offset(2,2),
            blurRadius: 200
          )
        ]
      ),
      margin: EdgeInsets.fromLTRB(10, 10, 10, 500),
      padding: EdgeInsets.all(20),
      child: 
      Column(children:[
      Row(children: [
        Container(
            height: 50,
            width: 150,
            decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),

          ),
          child: TextButton(
              onPressed: () {},
              child: Text(
                "قطار",
                style: TextStyle(color: Colors.black ,fontFamily: "Brb" ,fontSize: 30,fontWeight: FontWeight.bold),
              ),
              style: TextButton.styleFrom(),
            ),
            alignment: Alignment.centerRight,
        ),
        Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: TextButton(
              onPressed: () {},
              child: Text(
                "پرواز",
                style: TextStyle(color: Colors.black ,fontFamily: "Brb" ,fontSize: 30,fontWeight: FontWeight.bold),
              ),
              style: TextButton.styleFrom(),
          ),
          alignment: Alignment.centerRight,
        ),
      
      ],),

      Row(children: [
        Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: TextButton(
              onPressed: () {},
              child: Text(
                "هتل",
                style: TextStyle(color: Colors.black ,fontFamily: "Brb" ,fontSize: 30,fontWeight: FontWeight.bold),
              ),
              style: TextButton.styleFrom(),
            ),
            alignment: Alignment.centerRight,
        ),
        Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: TextButton(
              onPressed: () {},
              child: Text(
                "اتوبوس",
                style: TextStyle(color: Colors.black ,fontFamily: "Brb" ,fontSize: 30,fontWeight: FontWeight.bold),
              ),
              style: TextButton.styleFrom(),
          ),
          alignment: Alignment.centerRight,
        ),
      
      ],),
      Row(children: [
        Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),

          ),
          child: TextButton(
              onPressed: () {},
              child: Text(
                "ویلا",
                style: TextStyle(color: Colors.black ,fontFamily: "Brb" ,fontSize: 30,fontWeight: FontWeight.bold),
              ),
              style: TextButton.styleFrom(),
            ),
            alignment: Alignment.centerRight,
        ),
        Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: TextButton(
              onPressed: () {},
              child: Text(
                "تور",
                style: TextStyle(color: Colors.black ,fontFamily: "Brb" ,fontSize: 30,fontWeight: FontWeight.bold),
              ),
              style: TextButton.styleFrom(),
          ),
          alignment: Alignment.centerRight,
        ),
      ],
      )
    ])  
  )
  );
  
}