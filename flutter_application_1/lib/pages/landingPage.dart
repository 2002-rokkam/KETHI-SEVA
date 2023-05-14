import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/details_page.dart';
import 'package:flutter_application_1/pages/products.dart';
import 'dart:math';

import '../main.dart';

List<double> generateRandomList() {
  Random random = Random();
  List<double> randomList = [];

  for (int i = 0; i < 10; i++) {
    double value = random.nextDouble();
    randomList.add(value);
  }

  return randomList;
}

void main(List<String> args) {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class landingPage extends StatefulWidget {
   landingPage({super.key});

   List<Product> products = [
    Product(
      name: "Tomato",
      image: "assets/images/tomato.jpg",
      price: '8.17',
      rating: 'Andhra Pradesh',
      description2: "Tomato are an abundant source of vitamins A, C, potassium, and minerals, tomatoes are in high demand all year long.",
      description1: "Tomato is known as productive as well as protective food.",
      description3: "Tomato is grown throughout the year in almost every season; however, a farmer can get the highest yield if they grow it in winter or spring.",
      description: "Tomatoes are an...",
    ),
    Product(
      name: "Potato",
      image: "assets/images/potato.jpg",
      price: '17.56',
      rating: 'Uttar Pradesh,	West Bengal,Bihar',
      description1: "Potatoes are a good source of carbohydrates, dietary fiber, and some essential vitamins and minerals. ",
      description2: "Medicinal - They are rich in antioxidants which can help decrease the risks of heart disease, diabetes and cancer.",
      description3: "Here, autumn is the main potato season. The crop duration is short about 100-120 days in the West but a short spring crop can also be raised. .",
      description: "Potatoes are a good ...",
    ),
    Product(
      name: "Rice",
      image: "assets/images/rice.jpg",
      price: '20.40',
      rating: 'West Bengal',
      description1: "Rice is also a valuable source of complex carbohydrates, which is the best source of energy. ",
      description2: " Growing rice in nurseries are: (i) It increases the yield by 45%. (ii) Uses water economically.",
      description3: "Spring is a season of beginnings. Rice planting happens in the spring, cultivation in the summer, and harvest in the fall.",
      description: "Rice is also a valuable ...",
    ),
   Product(
      name: "Wheat",
      image: "assets/images/wheat.jpg",
      price: '20.00',
      rating: 'Rajasthan, Bihar,Gujarat',
      description1: "Wheat is typically milled into flour which is then used to make a wide range of foods ",
      description2: " Benefits from having wheat in the crop rotation include improving soil quality, cycling nutrients",
      description3: "Winter wheat is planted in the autumn and harvested from mid-May. Spring wheat is planted in the spring and harvested in autumn.",
      description: "Wheat is typically ...",
    ),
   Product(
      name: "Maize",
      image: "assets/images/maize.jpg",
      price: '18.7',
      rating: 'Madhya Pradesh and Karnataka',
      description1: "Maize is one of the most versatile emerging crops having wider adaptability under varied agro-climatic conditions. ",
      description2: "Maize has more riboflavin than wheat or rice and is rich in phosphorous and potash. ",
      description3: "kharif season, crop is sown in month of May end to June corresponding with the onset of monsoon. ",
      description: "Maize is  one of the...",
    ),
    Product(
      name: "Jowar",
      image: "assets/images/jowar.jpg",
      price: '27.38',
      rating: 'Maharashtra, Karnataka, AP',
      description1: " Jowar is a gluten-free and protein-rich millet which is now touted as a healthy alternative for Maida.",
      description2: "Jowar (sorghum) has a layer which contains anti-cancer properties and also fights the free radicals which are responsible for pre-mature ageing. ",
      description3: "The crop is raised both in rainy and post rainy seasons depending on soil, rainfall and other climatic factors of the region.",
      description: "Jowar is a gluten-free...",
    ),
    Product(
      name: "Millet",
      image: "assets/images/millet.jpg",
      price: '22.5',
      rating: 'Tamil Nadu,Haryana, Gujarat',
      description1: "Millets  are a highly varied group of small-seeded grasses ",
      description2: "They constitute an important source of food and fodder for millions of resource-poor farmers and play a vital role in ecological and economic security of India",
      description3: " April- May months is best for its cultivation in Jhum field.",
      description: "Millets are highly varied...",
    ),
    Product(
      name: "Cotton",
      image: "assets/images/cotton.jpg",
      price: '57.26',
      rating: 'Punjab, Haryana ',
      description1: "Cotton is a seed-hair fiber made mostly of cellulose.",
      description2: "Cotton no need processing, grows naturally and can be used as textile fiber. Cotton is temperament-loving and light-loving, and has high efficiency in the utilization of light and heat resources.",
      description3: "Cotton crop is sown from March-May and the rain fed crop in June-July with the commencement of the monsoon.",
      description: "Cotton is a seed-hair ..",
    ),
    Product(
      name: "Sugarcane",
      image: "assets/images/sugarcane.jpg",
      price: '28.5',
      rating: 'Uttar Pradesh,Maharashtra,Karnataka.',
      description1: "Sugarcane is a giant tropical grass from the family Graminaceae, whose stalk has the particular capacity to store a crystallizable sugar, sucrose.",
      description2: "  Sugarcane is mainly used as a fuel,fiber board, paper, plastics and furfural.",
      description3: "January to March is the period of planting and December to March is the period of harvesting.",
      description: "Sugarcane is a giant...",
    ),
     Product(
      name: "Lentils",
      image: "assets/images/lentils.jpg",
      price: '63.00',
      rating: 'Rajasthan,Madhya Pradesh,Maharastra',
      description1: "Lentil are plants are pale green herbs that grow up to 75cm tall.",
      description2: "Indian Lentils are highly beneficial for human heart health. ",
      description3: "n India, lentil is the second most important Rabi crop after chickpea (meaning that it is sown in winter and harvested in the spring)",
      description: "Lentils are  plants ...",
    ),
  ];

  List<double> randomValues = generateRandomList();


  @override
  State<landingPage> createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {

  void initState() {
    super.initState();
    sortProducts();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/wall.jpg"),
              opacity: 80,
              fit: BoxFit.cover),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Text(
            "Best Choices!",
            style: TextStyle(color: Colors.black, fontSize: 40.0),
          ),
          SizedBox(
            height: height / 10,
          ),
          Container(
            height: height / 2.5,
            width: width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: widget.products.map((Product) => card(Product)).toList(),
            ),
          ),
          SizedBox(
            height: height / 15,
          ),
          
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }

  void sortProducts() {
    setState(() {
      widget.products.sort((a, b) {
        int indexA = widget.products.indexOf(a);
        int indexB = widget.products.indexOf(b);
        print("Sorting...");
        if (indexA >= 0 && indexA <= 9 && indexB >= 0 && indexB <= 9) {
        return widget.randomValues[indexA].compareTo(widget.randomValues[indexB]);
      } else {
        return 0;
      }
      });
    });
  }

  Widget card(Product product) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: width / 18, right: width / 18),
      child: GestureDetector(
        child: Container(
          height: height / 2.5,
          width: width / 2,
          child: Stack(
            children: [
              Container(
                height: height / 2.5,
                width: width / 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.0),
                    image: DecorationImage(
                        image: AssetImage(product.image), fit: BoxFit.cover),
                    color: Colors.transparent),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                height: height / 2.5,
                width: width / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35.0),
                  gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.1), Colors.black],
                      begin: FractionalOffset.center,
                      end: FractionalOffset.bottomCenter),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height / 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      product.description,
                      style: TextStyle(color: Color.fromARGB(255, 145, 142, 142)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => details(
                    image: product.image,
                    action: product.name,
                    price: product.price,
                    rating: product.rating,
                    description1: product.description1,
                    description2: product.description2,
                    description3: product.description3,
                  )));
        },
      ),
    );
  }
}









// padding: EdgeInsets.all(15.0),
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(40.0),
//             image:
//                 DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
//         child: ,







// Container(
//           height: height / 2.5,
//           width: width / 2,
//           child: Stack(
//             children: [
//               Container(
//                 height: height / 2.5,
//                 width: width / 2,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(35.0),
//                     image: DecorationImage(
//                         image: AssetImage(image), fit: BoxFit.cover),
//                     color: Colors.transparent),
//               ),
//               Container(
//                 padding: EdgeInsets.all(15.0),
//                 height: height / 2.5,
//                 width: width / 2,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(35.0),
//                   gradient: LinearGradient(
//                       colors: [Colors.black.withOpacity(0.1), Colors.black],
//                       begin: FractionalOffset.center,
//                       end: FractionalOffset.bottomCenter),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       action,
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: height / 40,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Text(
//                       location,
//                       style: TextStyle(color: Colors.white),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         )