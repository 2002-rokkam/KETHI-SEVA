import 'package:flutter/material.dart';

import '/extensions/theme_x.dart';
//import '/pp2/widget/about_image_list.dart';
import '/tt11/widget/fold_widget.dart';

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
                    "Gardening Tiller Set",
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
                    "[Package Content]: Garden Tiller, Garden Hoe and Garden Hoe with 3 prongs."
"[Usage]: Ideal for a variety of tasks, including Digging, loosening soil, planting and more."
"[Ergonomically Designed]: Each ergonomically designed handle provides a superior grip in a neutral position while reducing wrist and hand strain, making gardening more comfortable and less exhausting."
"[Material]: Powder Coated Heavy Duty with a higher strength is used to make gardening equipment. There's no need to be bothered about rusting or breaking when using it, allowing you to get on with your gardening work faster."
"[Assured Quality]: With this product, Truphe provides ""ASSURED QUALITY"" and if you have any concerns about the quality or use of the product, you may request a complete refund.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
              ),
              //const AboutImageList(),
             
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
