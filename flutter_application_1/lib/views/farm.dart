import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/main1.dart';
//import 'package:flutter_application_1/TOOLS.dart';
//import '../fertiz.dart';
import '../frut.dart';
import '../mainfertiz.dart';
//import '../organic.dart';


class HomePage11 extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage11> {
  //var itemList = data;
  var listScrollController = new ScrollController();
  var scrollDirection = ScrollDirection.idle;

  @override
  void initState() {
    listScrollController.addListener(() {
      setState(() {
        scrollDirection = listScrollController.position.userScrollDirection;
      });
    });
    super.initState();
  }
  bool _scrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification) {
      setState(() {
        scrollDirection = ScrollDirection.idle;
      });
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      backgroundColor: Colors.green,
      
      
      body: Container(
        //height: height,
        //width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bac1.jpeg"),
              opacity: 80,
              fit: BoxFit.cover),
        ),
        child: Center(
          child: 
          Container(
            height: 400,
            
            padding: EdgeInsets.symmetric(vertical: 6),
            child: NotificationListener<ScrollNotification>(
              onNotification: _scrollNotification,
              child: ListView(
                controller: listScrollController,
                scrollDirection: Axis.horizontal,
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 100),
                    transform: Matrix4.rotationZ(
                        scrollDirection == ScrollDirection.forward
                            ? 0.02
                            : scrollDirection == ScrollDirection.reverse
                                ? -0.02
                                : 0),
                    width: 350,
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 12, 12, 12),
                              offset: Offset(-6, 4),
                              blurRadius: 10)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                flex: 4,              
               child: Container(
                height: 880,
                
                 child: ElevatedButton(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.black),
  ),
  onPressed: () {
    setState(() {
      // Rotate the button by changing the transform property
      // You can experiment with different rotation angles
      transform: Matrix4.rotationZ(0.5);
    });
    
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => cartd()),
    );
  },
  child: Image.asset('assets/images/11.jpg'),
),

              )
              ),
                    
                      ],
                    ),
                  ),
                  
                   
                   
                ]
                )
              ),
            ),
          ),
        ),
      );
    
  }
}