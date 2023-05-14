import 'package:flutter/material.dart';



class frut extends StatefulWidget {
  const frut({Key? key}) : super(key: key);

  @override
  State<frut> createState() =>frut_2();
}

class frut_2 extends State<frut> {
  
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
                Text("hi",
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
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => t1()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/v1.png"),
                    height: 100,
                    width: 100,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 8),
                child: Container(
                    child:  Text(
                    "TOMATO",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 0),
                child: Container(
                    child:  Text(
                    "₹440",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
                  Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                     child: ElevatedButton(
                 // padding: const EdgeInsets.only(left: 25,top: 25,right: 25),
                  onPressed: () {  
                  
                    const Text("Booked successfully");
                   }, 
                child: (
                  const Text('ORDER',style: TextStyle(color: Colors.black),)
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
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => t2()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/v2.png"),
                    height: 110,
                    width: 110,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                    child:  Text(
                    "Garden Vegseed kit",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 0),
                child: Container(
                    child:  Text(
                    "₹ 160",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
                   Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                     child: ElevatedButton(
                 // padding: const EdgeInsets.only(left: 25,top: 25,right: 25),
                  onPressed: () {  
                  
                    const Text("Booked successfully");
                   }, 
                child: (
                  const Text('ORDER',style: TextStyle(color: Colors.black),)
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
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => t3()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/v5.png"),
                    height: 100,
                    width: 130,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                    child:  Text(
                    "Brinjal",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 0),
                child: Container(
                    child:  Text(
                    "₹ 135",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
                   Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                     child: ElevatedButton(
                 // padding: const EdgeInsets.only(left: 25,top: 25,right: 25),
                  onPressed: () {  
                  
                    const Text("Booked successfully");
                   }, 
                child: (
                  const Text('ORDER',style: TextStyle(color: Colors.black),)
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
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => t4()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/v3.png"),
                    height: 100,
                    width: 130,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                    child:  Text(
                    "watermelon",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 0),
                child: Container(
                    child:  Text(
                    "₹ 300",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
                   Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                     child: ElevatedButton(
                 // padding: const EdgeInsets.only(left: 25,top: 25,right: 25),
                  onPressed: () {  
                  
                    const Text("Booked successfully");
                   }, 
                child: (
                  const Text('ORDER',style: TextStyle(color: Colors.black),)
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
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => t5()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/v4.png"),
                    height: 100,
                    width: 120,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                    child:  Text(
                    "Ridge guard",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 0),
                child: Container(
                    child:  Text(
                    " ₹ 150",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
                   Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                     child: ElevatedButton(
                 // padding: const EdgeInsets.only(left: 25,top: 25,right: 25),
                  onPressed: () {  
                  
                    const Text("Booked successfully");
                   }, 
                child: (
                  const Text('ORDER',style: TextStyle(color: Colors.black),)
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
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => t6()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/v6.png"),
                    height: 100,
                    width: 130,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                    child:  Text(
                    "Bhindi",
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
                    "₹ 200",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
                   Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                     child: ElevatedButton(
                 // padding: const EdgeInsets.only(left: 25,top: 25,right: 25),
                  onPressed: () {  
                  
                    const Text("Booked successfully");
                   }, 
                child: (
                  const Text('ORDER',style: TextStyle(color: Colors.black),)
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
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => t7()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/v7.png"),
                    height: 100,
                    width: 130,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                    child:  Text( "Coriandar ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 0),
                child: Container(
                    child:  Text(
                    "₹299",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
                   Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                     child: ElevatedButton(
                 // padding: const EdgeInsets.only(left: 25,top: 25,right: 25),
                  onPressed: () {  
                  
                    const Text("Booked successfully");
                   }, 
                child: (
                  const Text('ORDER',style: TextStyle(color: Colors.black),)
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
                   // Navigator.push(context, MaterialPageRoute(builder: (context) => t8()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/v8.png"),
                    height: 100,
                    width: 130,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                    child:  Text(
                    "Long Melon",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 00),
                child: Container(
                    child:  Text(
                    "₹311",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
                   Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                     child: ElevatedButton(
                 // padding: const EdgeInsets.only(left: 25,top: 25,right: 25),
                  onPressed: () {  
                  
                    const Text("Booked successfully");
                   }, 
                child: (
                  const Text('ORDER',style: TextStyle(color: Colors.black),)
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
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => t10()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/v10.png"),
                    height: 110,
                    width: 130,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                    child:  Text(
                    "Capsicum",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 0),
                child: Container(
                    child:  Text(
                    "₹595",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
                   Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                     child: ElevatedButton(
                 // padding: const EdgeInsets.only(left: 25,top: 25,right: 25),
                  onPressed: () {  
                  
                    const Text("Booked successfully");
                   }, 
                child: (
                  const Text('ORDER',style: TextStyle(color: Colors.black),)
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
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => t11()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/v11.png"),
                    height: 100,
                    width: 130,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                    child:  Text(
                    "Musk Melon",
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
                    "₹187",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
                   Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                     child: ElevatedButton(
                 // padding: const EdgeInsets.only(left: 25,top: 25,right: 25),
                  onPressed: () {  
                  
                    const Text("Booked successfully");
                   }, 
                child: (
                  const Text('ORDER',style: TextStyle(color: Colors.black),)
                ),
                ),
                ),
                ),
              ],
             ),
          ),
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
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => t11()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/v12.png"),
                    height: 100,
                    width: 130,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                    child:  Text(
                    "chilly",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 0),
                child: Container(
                    child:  Text(
                    "₹359",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
                   Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                     child: ElevatedButton(
                 // padding: const EdgeInsets.only(left: 25,top: 25,right: 25),
                  onPressed: () {  
                  
                    const Text("Booked successfully");
                   }, 
                child: (
                  const Text('ORDER',style: TextStyle(color: Colors.black),)
                ),
                ),
                ),
                ),
              ],
             ),
          ), 
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
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => t11()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/v13.png"),
                    height: 100,
                    width: 130,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                    child:  Text(
                    "bitter guard",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 0),
                child: Container(
                    child:  Text(
                    "₹159",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
                   Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                     child: ElevatedButton(
                 // padding: const EdgeInsets.only(left: 25,top: 25,right: 25),
                  onPressed: () {  
                  
                    const Text("Booked successfully");
                   }, 
                child: (
                  const Text('ORDER',style: TextStyle(color: Colors.black),)
                ),
                ),
                ),
                ),
              ],
             ),
          ),
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
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => t11()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/v14.png"),
                    height: 100,
                    width: 130,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                    child:  Text(
                    "Veg Kit",
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
                    "₹189",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  ),
                   Padding(
                  padding: EdgeInsets.only(top: 0),
                child: Container(
                     child: ElevatedButton(
                 // padding: const EdgeInsets.only(left: 25,top: 25,right: 25),
                  onPressed: () {  
                  
                    const Text("Booked successfully");
                   }, 
                child: (
                  const Text('ORDER',style: TextStyle(color: Colors.black),)
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

