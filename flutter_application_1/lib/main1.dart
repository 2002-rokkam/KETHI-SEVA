import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/benefits.dart';
import 'package:flutter_application_1/wether.dart';
import 'home_page.dart';

import 'newsssssss/main.dart';
import 'views/farm.dart';
import 'tips.dart';
import 'package:flutter_application_1/pages/landingPage.dart';
import 'package:flutter_application_1/views/bene.dart';
import 'package:flutter_application_1/views/news_a.dart';
import 'package:flutter_application_1/views/news_home.dart';



void main() {
  runApp( MyApp1());
}

class MyApp1 extends StatefulWidget {
   

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {

  int current_Index = 0;
  final tabs = [ landingPage(),HomePage11(), newsAA() , Benefits(),tips(),Benefits11()];


  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(164, 255, 163, 1);
    return MaterialApp(
      theme: ThemeData(primaryColor: primaryColor),
      home: Scaffold(
        appBar: AppBar(
          title:
              Image.asset('assets/images/logo.png', fit: BoxFit.contain, height: 65),
          backgroundColor: Colors.black,
          
          actions: <Widget>[
           ElevatedButton(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.black),
  ),
  onPressed: () { 
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp2()));
                   }, 
  child: Row(
    children: [
      Icon(
        Icons.wb_sunny_outlined,
        color: Colors.white,
        size: 30,
      ),
      SizedBox(width: 8),
      
    ],
  ),
),

        ],),
        bottomNavigationBar: CurvedNavigationBar(

            backgroundColor: Colors.green,
            
           color: Colors.black,
            items: [
              
              Icon(Icons.home, color: Colors.green, size: 30,
              ),
              // backgroundColor: Color.fromRGBO(164, 255, 163, 1)),
              Icon(Icons.shopping_basket, color: Colors.green,size: 30,), 
              //backgroundColor: Colors.blue),
              Icon(Icons.newspaper, color: Colors.green,size: 30,), 
              
              
              // backgroundColor: Colors.blue),
               Icon(Icons.policy, color: Colors.green,size: 30,),
 
              Icon(Icons.lightbulb, color: Colors.green,size: 30,),
              Icon(Icons.policy, color: Colors.green,size: 30,),
            ],
            onTap: (index) {
              setState(() {
                current_Index = index;
              });
            }),
        body: tabs[current_Index],
      ),
    );
  }
}
