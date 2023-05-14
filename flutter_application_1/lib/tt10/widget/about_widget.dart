import 'package:flutter/material.dart';

import '/extensions/theme_x.dart';
//import '/pp2/widget/about_image_list.dart';
import '/tt8/widget/fold_widget.dart';

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
                    "Gardening Tools Set  ",
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
                    "GARDEN TOOL SET: The garden tool Kit with box includes hand trowel, cultivator hand rake and pruner."
"USAGE: Perfect for all your garden needs, including digging, loosening soil, aerating, planting, weeding, pruning and more."
"HAND RAKE AND TROWEL: Made of heavy duty aluminium alloy, high hardness, durable , easy to clean, rust-resistant."
"PRUNER:Light weight Sharp stainless steel blade for easy and smooth cut."
"TOOL HANDLE: Anti-slip and ergonomic handle make the gardener more comfortable."
"MATERIAL : Cast aluminium hand rake and trowel, Stainless steel pruner"
"COLOUR : Yellow and black..",
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
                    '     Brand	Hiltree'
'Colour	Yellow and Balck'
'Material	Stainless Steel'
'Item Weight	510 Grams'
'Special Feature	Heavy Duty    '),
              Divider(),
              SizedBox(height: 45),
              
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
