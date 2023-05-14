import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/address.dart';
import 'package:flutter_application_1/phone.dart';
//import 'package:flutter_application_1/verify.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  runApp(const My1111());
}

class My1111 extends StatelessWidget {
  const My1111({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'phone',
      debugShowCheckedModeBanner: false,
      routes: {
        'phone': (context) => OtpVerificationScreen(),
        //'verify': (context) => MyVerify(),
        'home' : (context) => const My11(),
      },
      home: const SizedBox(), // Add a dummy widget as home
    );
  }
}
