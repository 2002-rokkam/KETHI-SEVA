/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/pp3/product1.dart';
import 'package:flutter_application_1/pp4/product1.dart';
import 'package:flutter_application_1/pp5/product1.dart';
import 'package:flutter_application_1/pp6/product1.dart';
import 'package:flutter_application_1/pp7/product1.dart';
import 'package:flutter_application_1/pp8/product1.dart';
import 'package:flutter_application_1/pp10/product1.dart';
import 'package:flutter_application_1/pp11/product1.dart';
import 'package:flutter_application_1/pp2/product1.dart';
import 'package:flutter_application_1/views/farm.dart';
import 'detail_screen/detail_screen.dart';

class fertizz3 extends StatefulWidget {
  const fertizz3({Key? key}) : super(key: key);

  @override
  State<fertizz3> createState() =>fertizz3_2();
}

class fertizz3_2 extends State<fertizz3> {
  
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            children: [

          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children:  [
                Padding(
  padding: const EdgeInsets.only(right: 320,top: 18,),
  child: InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage11()),
      );
    },
    child: const Icon(
      Icons.arrow_back,
      size: 30,
      color: Colors.black,
    ),
  ),
),

                 Text("buy",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                
                ),
                ),
                 GridView.count (
          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          shrinkWrap: true,
        children: [
             //for(int i=0;i<12;i++)
             //1
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 8,
                )
              ]
             ),
             child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => prduct1()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/p1.png"),
                    height: 130,
                    width: 130,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 8),
                child: Container(
                    child:  Text(
                    "ALLBOR-BORON 20%",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 10),
                child: Container(
                    child:  Text(
                    "₹ 161",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
              ],
             ),
          ),
          //2
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 8,
                )
              ]
             ),
             child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/p22.png"),
                    height: 110,
                    width: 110,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 30),
                child: Container(
                    child:  Text(
                    "GEOLIFE NO VIRUS ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 5),
                child: Container(
                    child:  Text(
                    "₹ 295",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
              ],
             ),
          ),
          //3
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 8,
                )
              ]
             ),
             child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => prduct3()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/p33.png"),
                    height: 130,
                    width: 130,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 8),
                child: Container(
                    child:  Text(
                    "ROUNDUP HERBICIDE",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 10),
                child: Container(
                    child:  Text(
                    "₹ 186",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
              ],
             ),
          ),
          //4
         Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 8,
                )
              ]
             ),
             child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => prduct4()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/p44.png"),
                    height: 130,
                    width: 130,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 8),
                child: Container(
                    child:  Text(
                    "KATYAYANI MASSACRE",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 10),
                child: Container(
                    child:  Text(
                    "₹ 818",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
              ],
             ),
          ),
//5
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 8,
                )
              ]
             ),
             child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => prduct5()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/p55.png"),
                    height: 120,
                    width: 120,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 8),
                child: Container(
                    child:  Text(
                    "EXPONUS INSECTICIDE",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 10),
                child: Container(
                    child:  Text(
                    " ₹ 635",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
              ],
             ),
          ),
          //6
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 8,
                )
              ]
             ),
             child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => prduct6()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/p66.png"),
                    height: 130,
                    width: 130,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 8),
                child: Container(
                    child:  Text(
                    "TAFGOR INSECTICIDE",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 10),
                child: Container(
                    child:  Text(
                    "₹ 79",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
              ],
             ),
          ),
          //7
         Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 8,
                )
              ]
             ),
             child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => prduct7()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/p77.png"),
                    height: 130,
                    width: 130,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 8),
                child: Container(
                    child:  Text(
                    "GLYCEL HERBICIDE",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 10),
                child: Container(
                    child:  Text(
                    " ₹ 710 ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
              ],
             ),
          ),
          //8
         Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 8,
                )
              ]
             ),
             child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => prduct8()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/p88.png"),
                    height: 130,
                    width: 130,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 8),
                child: Container(
                    child:  Text(
                    "SAAHO TOMATO SEEDS",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 10),
                child: Container(
                    child:  Text(
                    "₹ 1,000 ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
              ],
             ),
          ),
          //10
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 8,
                )
              ]
             ),
             child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => prductn()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/p99.png"),
                    height: 130,
                    width: 130,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 8),
                child: Container(
                    child:  Text(
                    "SAAF FUNGICIDE",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 10),
                child: Container(
                    child:  Text(
                    "₹ 80",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
              ],
             ),
          ),
          //11
         Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 8,
                )
              ]
             ),
             child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => prduct10()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/p10.png"),
                    height: 130,
                    width: 130,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 8),
                child: Container(
                    child:  Text(
                    "ALLBOR-BORON 20%",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 10),
                child: Container(
                    child:  Text(
                    "RS:161",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
              ],
             ),
          ),
          
        ],
        
        
        )

              ],


            ),


          ),

            ],
          ),
        )
      ),
     
      
    );
  }
}
*/
