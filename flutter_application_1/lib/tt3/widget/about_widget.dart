import 'package:flutter/material.dart';

import '/extensions/theme_x.dart';
//import '/pp2/widget/about_image_list.dart';
import '/tt3/widget/fold_widget.dart';

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
                    "Hand Tools Set",
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
                    "Package contents- small trowel, weeder, cultivator, fork and big trowel,Made from HDPE plastic for comfortable, non- slip grip. Fine quality handles made from unbreakable & first- grade material,High carbon metal sheet & anti- rusting powder coating to avoid scratching, 16 guage sheet used/1.6mm,Trowel is a small hand tool used for digging, applying, smoothing, or moving small amounts of viscous or particulate material.,Cultivator in an essential tool for eliminating weeds and breaking up soil clumps.,Weeder is a small hand tool with a forked end ideal for digging at individual weeds and removing them by the root.,Bi-material, soft feel and contoured handles for comfortable use, cranked to eliminate scraped knuckles and provide additional leverage.,Final Package Dimensions (L x B x H): 28 cm x 13.5 cm x 12 cm",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
              ),
              //const AboutImageList(),
             
            
              FoldWidget(
                title: 'Specifications',
                content:
                    '    Brand	Amazon Brand - Solimo,Colour	Black,Material	Iro,Item Dimensions LxWxH	30 x 9 x 1 Centimeters,Item Weight	800 Grams   '),
              Divider(),
              SizedBox(height: 45),
               
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
