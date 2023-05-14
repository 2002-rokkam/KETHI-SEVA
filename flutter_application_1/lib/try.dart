/*import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'fertiz.dart';
import 'mainfertiz.dart';
import 'organic.dart';
//import 'package:modern_list/data_list.dart';

class HomePage1 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage1> {
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
      body: Container(
        child: Center(
          child: Container(
            height: 300,
            padding: EdgeInsets.symmetric(vertical: 16),
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
                            ? 0.07
                            : scrollDirection == ScrollDirection.reverse
                                ? -0.07
                                : 0),
                    width: 200,
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.amberAccent.withOpacity(0.6),
                              offset: Offset(-6, 4),
                              blurRadius: 10)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                flex: 4,              
               child: Container(
                height: 880,
                
                 child: ElevatedButton(
                    
                   onPressed: () { 
                    Navigator.push(context, MaterialPageRoute(builder: (context) => cartd()));
                   }, 
                   child:Image.asset('assets/images/11.jpg'),
              ),
              )
              ), 
              Expanded(
                flex: 4,
             child:
              Container(
                height: 880,
                color: Colors.yellow ,
                child: ElevatedButton(
                   onPressed: () { 
                   Navigator.push(context, MaterialPageRoute(builder: (context) => MyFlipCard ()));
                   }, 
                child:Image.asset('assets/images/12.png'),
                ),
              )),
                        
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
}*/