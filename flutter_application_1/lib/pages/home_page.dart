

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/tips.dart';

import 'package:flutter_application_1/router/route_constants.dart';

import '../classes/language.dart';
import '../classes/language_constants.dart';

class HomePage3 extends StatefulWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  _HomePage3State createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  /*void _showSuccessDialog() {
    showTimePicker(context: context, initialTime: TimeOfDay.now());
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      //drawer: Drawer(
        //child: _drawerList(),
      //),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: _mainForm(context),
      ),
    );
  }
   Form _mainForm(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        children: [

                Container(
                 padding: const EdgeInsets.only(left: 200,top: 0,right: 15),
                   child: DropdownButton<Language>(
              underline: const SizedBox(),
              icon: const Icon(
                Icons.translate,
                color: Color.fromARGB(255, 14, 13, 13),
                size: 30,
              ),
              onChanged: (Language? language) async {
                if (language != null) {
                  Locale _locale = await setLocale(language.languageCode);
                  tips.setLocale(context, _locale);
                }
              },
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>(
                    (e) => DropdownMenuItem<Language>(
                      value: e,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            e.flag,
                            style: const TextStyle(fontSize: 30),
                          ),
                          Text(e.name)
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
                ),

               /* Container(
                  padding: const EdgeInsets.only(left: 20,top: 0,right: 15),
                child: Text(translation(context).homePage,
               
                style: TextStyle(
                  fontSize: 35,
                  color: Color.fromARGB(255, 12, 12, 12),
                
                ),
                ),

                ),*/
              Container(
		           child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
          physics: NeverScrollableScrollPhysics(),
          //backgroundColor: Colors,
          shrinkWrap: true,
			children: [
     
      
       Container(
        padding: const EdgeInsets.only(left: 25,top: 0,right: 25),

		child: FlipCard(
				direction: FlipDirection.HORIZONTAL,
			
				front: Container(
				alignment: Alignment.center,
				width: 150,
				height: 200,
				//color: Colors.red,
				decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                   boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1.0),
                  spreadRadius: 1,
                  blurRadius: 8,
                )],
                  image: DecorationImage(
                    image: AssetImage("assets/images/f44.jpg"),fit: BoxFit.cover,
                    
                  ),
                 ),
				),
				
				back: Container(
				alignment: Alignment.center,
				width: 150,
				height: 225,
				decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lime,
                   boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1.0),
                  spreadRadius: 1,
                  blurRadius: 8,
                )],),
				child: Text(translation(context).email,
              style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
        ),
				),
			),
      ),
       Container(
        padding: const EdgeInsets.only(left: 25,top: 45,right: 25),

		child: FlipCard(
				direction: FlipDirection.HORIZONTAL,
			
				front: Container(
				alignment: Alignment.center,
				width: 150,
				height: 200,
				//color: Colors.red,
				decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                   boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1.0),
                  spreadRadius: 1,
                  blurRadius: 8,
                )],
                  image: DecorationImage(
                    image: AssetImage("assets/images/f55.jpg"),fit: BoxFit.cover,
                    
                  ),
                 ),
				),
				
				back: Container(
				alignment: Alignment.center,
				width: 150,
				height: 225,
				decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lime,
                   boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1.0),
                  spreadRadius: 1,
                  blurRadius: 8,
                )],),
				child: Text(translation(context).emailHint,
              style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
        ),
				),
			),
      ),
       
       Container(
        padding: const EdgeInsets.only(left: 25,top: 45,right: 25),

		child: FlipCard(
				direction: FlipDirection.HORIZONTAL,
			
					front: Container(
				alignment: Alignment.center,
				width: 150,
				height: 200,
				//color: Colors.red,
			decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                   boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1.0),
                  spreadRadius: 1,
                  blurRadius: 8,
                )],
                  image: DecorationImage(
                    image: AssetImage("assets/images/f66.jpg"),fit: BoxFit.cover,
                    
                  ),
                 ),
				),
				back: Container(
				alignment: Alignment.center,
				width: 130,
				height: 225,
				decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lime,
                   boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1.0),
                  spreadRadius: 1,
                  blurRadius: 8,
                )],),
				child: Text(translation(context).dateOfBirth,
         style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
				),
			),
      ),
       Container(
        padding: const EdgeInsets.only(left: 25,top: 45,right: 25),

		child: FlipCard(
				direction: FlipDirection.HORIZONTAL,
			
					front: Container(
				alignment: Alignment.center,
				width: 150,
				height: 200,
				//color: Colors.red,
				decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                   boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1.0),
                  spreadRadius: 1,
                  blurRadius: 8,
                )],
                  image: DecorationImage(
                    image: AssetImage("assets/images/f77.jpg"),fit: BoxFit.cover,
                    
                  ),
                 ),
				),
				
				back: Container(
				alignment: Alignment.center,
				width: 130,
				height: 225,
				decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lime,
                   boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1.0),
                  spreadRadius: 1,
                  blurRadius: 8,
                )],),
				child: Text(translation(context).requiredField,
         style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
				),
			),
      ),
       Container(
        padding: const EdgeInsets.only(left: 25,top: 45,right: 25),

		child: FlipCard(
				direction: FlipDirection.HORIZONTAL,
			
					front: Container(
				alignment: Alignment.center,
				width: 150,
				height: 200,
				//color: Colors.red,
				decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                   boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1.0),
                  spreadRadius: 1,
                  blurRadius: 8,
                )],
                  image: DecorationImage(
                    image: AssetImage("assets/images/f88.jpg"),fit: BoxFit.cover,
                    
                  ),
                 ),
				),
				
			back: Container(
				alignment: Alignment.center,
				width: 130,
				height: 225,
				decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lime,
                   boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1.0),
                  spreadRadius: 1,
                  blurRadius: 8,
                )],),
				child: Text(translation(context).submitInfo,
         style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
				),
			),
      ),
      Container(
        padding: const EdgeInsets.only(left: 25,top: 45,right: 25),

		child: FlipCard(
				direction: FlipDirection.HORIZONTAL,
			
					front: Container(
				alignment: Alignment.center,
				width: 150,
				height: 200,
				//color: Colors.red,
				decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                   boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1.0),
                  spreadRadius: 1,
                  blurRadius: 8,
                )],
                  image: DecorationImage(
                    image: AssetImage("assets/images/f110.jpg"),fit: BoxFit.cover,
                    
                  ),
                 ),
				),
				
				back: Container(
				alignment: Alignment.center,
				width: 130,
				height: 225,
				decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lime,
                   boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1.0),
                  spreadRadius: 1,
                  blurRadius: 8,
                )],),
				child: Text(translation(context).aboutUs,
         style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
				),
			),
      ),
       Container( 
         padding: const EdgeInsets.only(left: 25,top: 15,right: 25),
         
			child: FlipCard(
				direction: FlipDirection.HORIZONTAL,
				front: Container(
				alignment: Alignment.center,
				width: 130,
				height: 260,
				//color: Colors.red,
				decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                   boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1.0),
                  spreadRadius: 1,
                  blurRadius: 8,
                )],
                  image: DecorationImage(
                    image: 
                    AssetImage("assets/images/f11.png"),fit: BoxFit.cover,
                  ),
                 ),
				),
				
				back: Container(
				alignment: Alignment.center,
				width: 130,
				height: 225,
       decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lime,
                   boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1.0),
                  spreadRadius: 1,
                  blurRadius: 8,
                )],),
				//color: Color.fromARGB(255, 240, 236, 5),
				child: Text(translation(context).crp,
         style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
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
        );
}
}
    

  /*Container _drawerList() {
    TextStyle _textStyle = const TextStyle(
      color: Colors.white,
      fontSize: 24,
    );
    return Container(
      color: Theme.of(context).primaryColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              height: 100,
              child: const CircleAvatar(),
            ),
          ),
          
        ],
      ),
    );
  }*/
