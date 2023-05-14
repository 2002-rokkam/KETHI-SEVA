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
                    "Tiller Cultivator",
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
                    "Powerful Electric Tiller: The powerful 1500W electric cultivator / tiller works through almost any soil and enables the quick digging of vegetable and flower patches, and lawn surfaces."
"Efficient Work: our tiller with a cutting width of 450mm, maximum tilling depth of 220mm and 6 durable steel blades, the tiller will quickly and efficiently work through large surface areas."
"Ultra Thickened Steel Blade: Extra thickened durable steel blade on this garden electric rototiller cultivator easily turn over hard-packed dirt and soil ."
"2-Point Safety Switch: This tiller is equipped with a 2-point safety switch which shuts down the robust cultivator blades as soon as you let go of the switch."
"Convenient Design: Lightweight design（only 13.5kg）of electric corded garden tiller cultivator makes it effortless to operate and store; Three gear height adjustment makes it easier for you to control when using it ",
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
                    '      Brand	NEPTUNE SIMPLIFY FARMING'
'Colour	Orange'
'Item Dimensions LxWxH	48 x 45 x 52 Centimeters'
'Power Source	Hand_powered'
'Material	Alloy Steel '),
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
