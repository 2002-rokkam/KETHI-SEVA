import 'package:flutter/material.dart';

import '/extensions/theme_x.dart';
import '/detail_screen/widget/about_image_list.dart';
import '/detail_screen/widget/fold_widget.dart';

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
                    "GEOLIFE NO VIRUS ",
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
                    "No-Virus is an effective anti-viral product to protect crops from all types of viral diseases. ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
              ),
              //const AboutImageList(),
              FoldWidget(
                title: 'FEATURES',
                content:
                    'It is a Broad Spectrum Organic Virucide which protects the plant from Virus and also improves resistance against them.It is a combination of rare herbs which stops Virus immediately and gives fresh growth and yield.'),
              Divider(),
              FoldWidget(
                title: 'BENEFITS',
                content:
                    '         Used for control of plant viral diseases, It is a Broad Spectrum Organic Virucide which protects the plant from Virus and also improves resistance against them.      '),
              Divider(),
              SizedBox(height: 45),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 20), 
               child:  Text(
                    "Usage ",
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
                    "CROPS - Vegetables, Fruits & Pulses. ",
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
                    "INSECTS AND DISEASES - Chilli Leaf Curl Virus Chilli Mosaic Virus Capsicum – TMV Squash Mosaic virus Cucumber Mosaic Virus Tomato Leaf Curl Virus Tomato Mosaic Virus Bean Yellow Mosaic Virus.",
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
                    "MODE OF ACTION - No-Virus enters the plant through the stomatal opening and is translocated into the plant system through the vascular bundles, on entering the effected plant cell encapsulates the viron particles. No-Virus opens up the conductive tissues blocked by the virus particles and the plant cells starts to recover & the new leaves emerges virus free. It is effective up to 15 days after application. In combination with Treat or any other fungicide it gives complete protection to plant from bacterial and fungal diseases. ",
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
