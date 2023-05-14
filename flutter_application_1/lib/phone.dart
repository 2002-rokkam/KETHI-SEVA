 import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'address.dart';



class OtpVerificationScreen extends StatefulWidget {
  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final _phoneController = TextEditingController();
  final _codeController = TextEditingController();
  late String _verificationId;
  

  Future<void> _verifyPhone() async {
    final PhoneVerificationCompleted verificationCompleted =
        (AuthCredential phoneAuthCredential) {
      FirebaseAuth.instance.signInWithCredential(phoneAuthCredential);
      // TODO: Navigate to next screen after verification
    };

    final PhoneVerificationFailed verificationFailed =
        (FirebaseAuthException authException) {
      print('Phone verification failed: ${authException.message}');
    };

    final PhoneCodeSent codeSent =
        (String verificationId, [int? forceResendingToken]) async {
      // TODO: Save the verification ID somewhere, for example, in a local variable
      _verificationId = verificationId;
      // Navigate to the OTP verification screen
    } as PhoneCodeSent;

    final PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout =
        (String verificationId) {
      _verificationId = verificationId;
    };

    // Set the locale for the Firebase instance
    await FirebaseAuth.instance.setLanguageCode('en');

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: _phoneController.text,
      //timeout: const Duration(seconds: 60),
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }

 Future<void> _submitOtp() async {
    try {
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationId,
        smsCode: _codeController.text,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => My11()),
        (route) => false,
      );
      print('OTP');
    } catch (e) {
      print('Invalid OTP: $e');
    }
}


  @override
 Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
  title: Row(
    children: [
      Icon(Icons.lock, size: 30),
      SizedBox(width: 10),
      Text('OTP Verification',),
    ],
  ),
  backgroundColor: Colors.black,
),

    body:
     SingleChildScrollView(
       child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Image.asset('assets/verify.png'),
                SizedBox(height: 16.0),
            TextField(
              controller: _phoneController,
              style: TextStyle(color: Colors.black), // Set the text color of the TextField
              decoration: InputDecoration(
                hintText: 'Enter phone number',
                hintStyle: TextStyle(color: Colors.black),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _verifyPhone,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: Text('Send OTP', style: TextStyle(color: Colors.black)), // Set the text color of the button
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _codeController,
              style: TextStyle(color: Colors.black), // Set the text color of the TextField
              decoration: InputDecoration(
                hintText: 'Enter OTP',
                hintStyle: TextStyle(color: Colors.black),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _submitOtp,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: Text('Verify OTP', style: TextStyle(color: Colors.black)), // Set the text color of the button
            ),
          ],
        ),
         ),
     ),
  );
}
}