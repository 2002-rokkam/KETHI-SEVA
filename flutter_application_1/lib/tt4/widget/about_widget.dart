import 'package:flutter/material.dart';

import '/extensions/theme_x.dart';
//import '/pp2/widget/about_image_list.dart';
import '/tt4/widget/fold_widget.dart';

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
                    "Heavy Duty HandWeeder",
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
                    "Hand Roller Weeder ,Width 10 & Pipe Length 43,Used for less than 2cm grasses, This hand roller weeder is MS powder coated body, Hardened and Tempered spring steel blade for long work life. Flexible handle stays for forward and backward operation, Medium sharpness blades enables for weeding soil. ",
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
                    '       Useful for removing weeds in any field. Light weight and easy to operate all ages.,Hand held product, no power and maintenance required.,This is available with strong long handle.,Easy to Use and Maintain    '),
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
