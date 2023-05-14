import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main1.dart';
import 'package:flutter_application_1/phone.dart';
import 'package:flutter_application_1/views/farm.dart';

import 'firebase_options.dart';

class My11 extends StatelessWidget {
  const My11({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/b00k.jpg'),
              SizedBox(height: 16.0),
              ElevatedButton(
  onPressed: () { 
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp1()));
  },
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
    
  ),
  child: Text('DONE'),
)

            ],
          ),
        ),
      ),
    );
  }
}
