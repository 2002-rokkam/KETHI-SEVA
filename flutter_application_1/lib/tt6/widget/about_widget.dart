import 'package:flutter/material.dart';

import '/extensions/theme_x.dart';
//import '/pp2/widget/about_image_list.dart';
import '/tt6/widget/fold_widget.dart';

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
                    "Lukzer 3Arm Sprinkler",
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
                    "【Different Spray Modes】The high-quality adjustable spray arms with 4 forms nozzle can adjust the sprinkling angle to 45 degrees or 90 degrees to achieve large-area watering effects, or to achieve higher density watering effects. 【Wider Coverage Area】The 360-degree rotating sprinkler can irrigate a diameter range of 24-32 feet under a water pressure of 40 PSI, And an irrigation range of 36-49 feet under a water pressure of 60 PSI. Great for watering medium to larger size yards.【Premium Quality & Anti-Leak Design】The sprinkler head is made of high-quality ABS plastic to ensure durability and long life. The tightly sealed water outlet can prevent water leakage to make full use of water resources to achieve the most effective irrigation effect.【Save Time & Easy To Use】Just connect the yard sprinkler directly and then fix the bottom to the grass. Turn on the faucet. You can do your things with peace of mind. Leave the watering to our sprinkler. Do more with less."
"【Multipurpose And Efficient】Garden Sprinklers are suitable for grass irrigation, watering of flower and vegetable gardens, and can also be used as an entertainment device, your children and pets will not feel hot when playing in the hot summer.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
              ),
              //const AboutImageList(),
             
              
              SizedBox(height: 45),
              FoldWidget(
                title: 'Specifications',
                content:
                    '    ,Brand	UCRAVO,Colour	Multi,Material	Plastic,Style	Adjustable,Kids,Item Dimensions LxWxH	6.8 x 6.8 x 3.5 Centimeters   '),
              Divider(),
              
               
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
