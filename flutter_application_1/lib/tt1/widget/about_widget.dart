import 'package:flutter/material.dart';

import '/extensions/theme_x.dart';
//import '/pp2/widget/about_image_list.dart';
import '/tt1/widget/fold_widget.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({Key? key}) : super(key: key);

  @override
  AboutWidgetState createState() => AboutWidgetState();
}

class AboutWidgetState extends State<AboutWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 45),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
               child:  Text(
                    "Dual Blade Digger",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child:  Text(
                    "ABOUT PRODUCT",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child:  Text(
                    "Manual Dual Blade Earth Auger, High Carbon Steel Blade ,6 inches Hole Digger Diameter,    This manual heavy duty garden post hole hand auger can drills through loose material so you can plant bulbs and bedding plants anywhere you want, saving energy and time.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
              ),
              //const AboutImageList(),
             
              FoldWidget(
                title: 'Features',
                content:
                    '       High Efficiency, Safe & Ecofriendly,Durable & Strong,Easy to Use ,Widely Applied     '),
              Divider(),
              FoldWidget(
                title: 'Specifications',
                content:
                    '     Product Type : Manual Earth Auger ,Brand : Made in India,Digging Diameter : 6 inches,Blade Length : 35 Inches ,Material :  Galvanized Metal,Steel Material : High Carbon Steel  ,Dimension (L x W x H) : 89 cm x 89 cm x 16 cm,Weight : 3.2 kg (Approx)     '),
              Divider(),
              SizedBox(height: 45),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 20), 
               child:  Text(
                    "Instruction to Use :  ",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
              ),
            SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20), 
               child:  Text(
                    "Choose hole position. Choose and mark the position you wish your plant or fence post to be. Prepare manual post-hole auger.Twist the handle. Remove soil from ground.Remove soil from manual post-hole auger.Repeat",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
              ),
              
              SizedBox(height: 100),
            ],
          ),
        ),
        Container(
          width: context.width,
          height: 40,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(.8),
                  Colors.white.withOpacity(0)
                ]),
          ),
        ),
      ],
    );
  }
}
