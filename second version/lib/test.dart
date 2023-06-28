// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, library_private_types_in_public_api, annotate_overrides, avoid_print

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final formKey = GlobalKey<FormState>(); //key for form
  bool passwordVisible22 = false;
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar( 
             title: Text("Form Validation"),
             backgroundColor: Colors.indigoAccent,
          ),
          body: Container(
            padding: EdgeInsets.all(20),
            child: Form( 
              key: formKey, //key for form
              child:Column(children: [
                    
                     Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 30, 0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "شماره موبایل یا آدرس‌ایمیل به همراه کلمه عبور خود را وارد کنید",
                          style: TextStyle(
                              fontFamily: "Brb",
                              fontSize: 13,
                              color: Color.fromARGB(255, 27, 180, 246)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                          decoration: InputDecoration( 
                            labelText: "آدرس ایمیل یا شماره موبایل",
                            prefixIcon: Icon(Icons.supervisor_account_rounded),
                          ),
                          validator: (value){
                            if(value!.isEmpty || !(RegExp(r'^(?=.*[aA].*[aA].*)(?=.*[01])[a-zA-Z0-9]{8,}$').hasMatch(value) || RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) ){
                                return "لطفا ایمیل خود را صحیح وارد کنید.";
                            }else{
                               return null;
                            }
                          },
                       ),
                    ),
                     Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            obscureText: passwordVisible22,
                            decoration: InputDecoration( 
                              labelText: "تکرار کلمه عبور",
                              prefixIcon: Icon(Icons.check_circle_outline_rounded),
                              suffixIcon: IconButton(
                                  icon: Icon(passwordVisible22
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      passwordVisible22 = !passwordVisible22;
                                    });
                                  },
                                ),
                            ),
                            validator: (value){
                              if(value!.isEmpty || !(RegExp(r'^(?!.*\d{2})^(?=.*[aA].*[aA])(?=.*\d)[a-zA-Z0-9]{8,}$').hasMatch(value) || RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$').hasMatch(value)) ){ //regex must be checked
                                  return "رمز عبور نامعتبر است.";
                              }else{
                                 return null;
                              }
                            },
                         ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            obscureText: passwordVisible22,
                            decoration: InputDecoration( 
                              labelText: "تکرار کلمه عبور",
                              prefixIcon: Icon(Icons.check_circle_outline_rounded),
                              suffixIcon: IconButton(
                                  icon: Icon(passwordVisible22
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      passwordVisible22 = !passwordVisible22;
                                    });
                                  },
                                ),
                            ),
                            validator: (value){
                              if(value!.isEmpty || !(RegExp(r'^(?!.*\d{2})^(?=.*[aA].*[aA])(?=.*\d)[a-zA-Z0-9]{8,}$').hasMatch(value) || RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$').hasMatch(value)) ){ //regex must be checked
                                  return "رمز عبور نامعتبر است.";
                              }else{
                                 return null;
                              }
                            },
                         ),
                      ),
                    
                    ElevatedButton(
                      onPressed: (){
                          if(formKey.currentState!.validate()){
                             print("object");
                          }
                      },
                      child: Text("Submit Data")
                    )
                ],
               ),
            ),
          )
       );
  }
}