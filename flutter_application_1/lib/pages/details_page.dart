import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/landingPage.dart';

class details extends StatefulWidget {
  const details(
      {super.key,
      required this.image,
      required this.action,
      required this.price,
      required this.rating,
      required this.description1,
      required this.description2,
      required this.description3});
  final String image;
  final String action;
  final String price;
  final String rating;
  final String description1;
  final String description2;
  final String description3;

  // details(this.image,this.location)

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            Container(
              height: height * 0.75,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 0.0,
              child: Padding(
                padding: EdgeInsets.only(top: height / 15, left: height / 30),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)),
                  height: width / 7,
                  width: width / 7,
                  child: Center(
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.grey,
                        size: 30.0,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(height / 25),
                  height: height * 0.55,
                  width: width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        widget.action,
                        style: TextStyle(
                          fontSize: height / 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(
                            Icons.currency_rupee_outlined,
                            color: Colors.orange,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(widget.price,
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: height / 40,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: height / 30,
                      ),
                      Container(
                          height: width / 8,
                          width: width / 3,
                          decoration: BoxDecoration(
                              color: colore,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                widget.rating,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: height / 50),
                              ),
                              const SizedBox(
                                width: 3.0,
                              ),
                             
                            ],
                          )),
                      SizedBox(
                        height: height / 30,
                      ),
                      Text(
                        widget.description1,
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: height / 50),
                      ),
                      SizedBox(
                        height: height / 120,
                      ),
                      Text(
                        widget.description2,
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: height / 50),
                      ),
                      SizedBox(
                        height: height / 120,
                      ),
                      Text(
                        widget.description3,
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: height / 50),
                      ),
                      SizedBox(
                        height: height / 100,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  // Widget people(String image, String content) {
  //   double height = MediaQuery.of(context).size.height;
  //   double width = MediaQuery.of(context).size.width;
  //   return Container(
  //     height: width / 7,
  //     width: width / 7,
  //     decoration: BoxDecoration(image: DecorationImage(image: AssetImage(""))),
  //   );
  // }
  
}

Color colore = Color.fromRGBO(58, 142, 155, 1);
