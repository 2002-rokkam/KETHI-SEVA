
import 'package:flutter_application_1/helperfertiz/db_helper.dart';
import 'package:flutter_application_1/main1.dart';
import 'package:flutter_application_1/modelC/cart_model.dart';
import 'package:flutter_application_1/modelC/cart_model.dart';
import 'package:flutter_application_1/pp2fertizz/product1.dart';
import 'package:flutter_application_1/providerfertizz/cartprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../views/farm.dart';
import 'cart_screen.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<String> productName = [
    'ALLBOR-BORON 20%',
    'GEOLIFE NO VIRUS ',
    'ROUNDUP HERBICIDE',
    'KATYAYANI MASSACRE   ',
    'EXPONUS INSECTICIDE',
    'TAFGOR INSECTICIDE',
    'GLYCEL HERBICIDE',
    'SAAHO TOMATO SEEDS',
    'SAAF FUNGICIDE',
    'JUMP INSECTICIDE',
    'Dual Blade Digger',
    "Garden Pressure Sprayer",
    "Hand Tools Set",
    'Heavy Duty HandWeeder',
    'Tiller Cultivator',
    'Hectare Wheel',

  ];
  List<String> productUnit = [
    'ALLBOR-BORON 20%',
    'GEOLIFE NO VIRUS ',
    'ROUNDUP HERBICIDE',
    'KATYAYANI MASSACRE ',
    'EXPONUS INSECTICIDE',
    'TAFGOR INSECTICIDE',
    'GLYCEL HERBICIDE',
    'SAAHO TOMATO SEEDS',
    'SAAF FUNGICIDE',
    'JUMP INSECTICIDE',
    'Dual Blade Digger',
    "Garden Pressure Sprayer",
    "Hand Tools Set",
    'Heavy Duty HandWeeder',
    'Tiller Cultivator',
    'Hectare Wheel',
   

  ];
  List<String> d1 = [
    'Contains 20% Boron in water soluble form.',
    ' No-Virus is an effective anti-viral product to protect crops from all types of viral diseases.',
'Roundup Herbicides are the flagship of Monsanto’s agricultural chemicals business.''Roundup Herbicide and other glyphosate products can be used as part of an environmentally responsible weed control program and fit with our vision of sustainable agriculture and environmental protection.',
    'Massacre herbicide is effective for the control of broadleaf weeds and sedges in transplanted and direct seeded, Paddy. It is effectively used for weed management in rice.',
    'BASF Exponus is a revolutionary insecticide that gives you the power over difficult insects. BASF Exponus® insecticide is a powerful, quick, and versatile insecticide for farmers who want the top performing pest control tool. It is a new mode of action targeted to control even the toughest chewing pests, certain thrips & leaf miner.',
    'Tafgor belongs to the Organophosphate group. It is highly effective in controlling the sucking and caterpillar pests.',
    'Glycel is a systemic, broad spectrum, non-selective post emergent herbicide. It is effective in controlling all weeds including annuals, perennials, grassy, broadleaf weeds and sedges.',
    'Determinate Plant Good Stay greenness Dark green foliage Good Heat set Very Good Firm Fruits High Yield potential',
    'A proven & classic fungicide with systemic & contact action. Most trusted & widely used dual mode of action fungicide A cost effective proven fungicide with both Systemic & Contact action..',
    'Jump Insecticide is a Fipronil-based phenyl pyrazolo insecticide. Jump is very effective in controlling stem borer and leaf folder in rice. Fipronil not only controls insect pests effectively but also shows plant growth enhancement effects which result in higher yields.The potent formulation enables effective control of pests at very low dose rates thereby resulting in a lower impact on the environment.',
    "Manual Dual Blade Earth Auger, High Carbon Steel Blade ,6 inches Hole Digger Diameter,    This manual heavy duty garden post hole hand auger can drills through loose material so you can plant bulbs and bedding plants anywhere you want, saving energy and time.",
                        "Made in India Manual Garden Sprayer,5 L Hand Held Sprayer,Built-in Measuring Scale,It can be used in garden and agricultural field to spray chemical and fertilizer on plants. A light plastic body with adjustable strip and portable.",
                        "Package contents- small trowel, weeder, cultivator, fork and big trowel,Made from HDPE plastic for comfortable, non- slip grip. Fine quality handles made from unbreakable & first- grade material,High carbon metal sheet & anti- rusting powder coating to avoid scratching, 16 guage sheet used/1.6mm,Trowel is a small hand tool used for digging, applying, smoothing, or moving small amounts of viscous or particulate material.,Cultivator in an essential tool for eliminating weeds and breaking up soil clumps.,Weeder is a small hand tool with a forked end ideal for digging at individual weeds and removing them by the root.,Bi-material, soft feel and contoured handles for comfortable use",
    "Hand Roller Weeder ,Width 10 & Pipe Length 43,Used for less than 2cm grasses, This hand roller weeder is MS powder coated body, Hardened and Tempered spring steel blade for long work life. Flexible handle stays for forward and backward operation, Medium sharpness blades enables for weeding soil. ",
    "Powerful Electric Tiller: The powerful 1500W electric cultivator / tiller works through almost any soil and enables the quick digging of vegetable and flower patches, and lawn surfaces.Efficient Work: our tiller with a cutting width of 450mm, maximum tilling depth of 220mm and 6 durable steel blades, the tiller will quickly and efficiently work through large surface areas.Ultra Thickened Steel Blade: Extra thickened durable steel blade on this garden electric rototiller cultivator easily turn over hard-packed dirt and soil .2-Point Safety Switch: This tiller is equipped with a 2-point safety switch which shuts down the robust cultivator blades as soon as you let go of the switch.Convenient Design:  ",
   '         Hectare Cycle having ergonomically designed to suit height of all the person and its handle can be adjusted easilyIt has a light weight tyre for easy operation ',
  
  
  ];
  List<String> d2 = [
    'It helps to control flower shedding. Its application increases sweetness, size, colour and yield of the crop',
    'Used for control of plant viral diseases, It is a Broad Spectrum Organic Virucide which protects the plant from Virus and also improves resistance against them.  ',
    ' It is a broad-spectrum herbicide that controls broadleaf, sedge, and grass weeds with minimal residual toxicity to crops or non-target vegetation.',
    ' Katyayani Massacre works through both contact and residual soil activity, hence providing weed management in rice for a longer period. It is also not prone to volatilization and does not harm adjacent crops like mustard, vegetable, fruit crops, cotton, castor, etc. unless it’s directly sprayed on them.  ',
    'Powerful - Effective on resistant and toughest insects. Quick - Spreads and acts fast, resulting in quick control of insects.Versatile - Effectively controls many insects in different crops at different stages.',
    'Tafgor provides locally systemic and broad-spectrum contact activityIt delivers powerful protection against key piercing, sucking and chewing insectsIt is highly compatible and has a synergistic effect with other insecticides',
    '  It helps to control flower shedding. Its application increases sweetness, size, colour and yield of the crop',
    'Seed Rate: 40-50 g per acre. Sowing: Prepare the raised bed of 180x90x15cm, for 1acre 10 to 12 beds are required.Nursery should be free from weeds and debris. Line sowing is recommended.Distance between two row: 8-10 cm (4 fingers) apart,Distance between seed to seeds : 3-4 cm ( 2 fingers),Seeds are sown in line at 0.5-1.0 cm deepTransplanting: Transplanting should be done @ 21-25 days after sowing.Spacing:Row to Row and Plant to Plant - 120 x 60',
    'It helps to control flower shedding. Its application increases sweetness, size, colour and yield of the crop ',
    'Innovative formulation (Fluid bed technology): Ease in handling, measuring, and dosing, free from dust particles, excellent suspension in water for improved coverage on cropLow dose: Jump granules applied at dose rates as low as a few grams per hectare are effective against major pests.Suitable for IPM: Jump is an ideal choice for IPM.Plant growth enhancement: Jump has shown demonstrable plant growth enhancement effect in many crops.Longer protection: Protects the crop for a longer period.Minimal environmental effect: Extensive research has demonstrated that Fipronil has minimal impact on the environment.',
    'High Efficiency, Safe & Ecofriendly,Durable & Strong,Easy to Use ,Widely Applied ', 
   '       High Efficiency, Strong pressure ,Multi purpose ,With comfortable and adjustable carrying strip     ',
    'Hand tools are cheaper than power tools and more versatile. Hand tools are also a safer option because they can be used in circumstances where power tools may be dangerous.',
  '       Useful for removing weeds in any field. Light weight and easy to operate all ages.,Hand held product, no power and maintenance required.,This is available with strong long handle.,Easy to Use and Maintain    ',
  'Power Tiller helps in preparing the soil, sowing seeds, planting seeds, adding & spraying the fertilizers, herbicides & water. In addition to it also helps in pumping water, harvesting, threshing & transporting crops. A power Tiller is ideal where the land side is small',
  'For weeding and intercultural operations in vegetables and other crops sown in rows. It is used in pushing and pulling mode for removing weeds. Some of the wheel hand hoes have provision for adjusting the handle height to suit people of different statures.',
  
  ];
  List<String> d3 = [
    'For all fruit and vegetable crops ,DOSAGE & Methods Of Application Foliar Spray: Dissolve 1.0 g in one litre of water. First spray: Just before flowering and Second spray: 10 -12 days after first spray. Two sprays during the cropping season are enough to meet the boron requirement of the crop.',
    'CROPS - Vegetables, Fruits & Pulses. INSECTS AND DISEASES - Chilli Leaf Curl Virus Chilli Mosaic Virus Capsicum – TMV Squash Mosaic virus Cucumber Mosaic Virus Tomato Leaf Curl Virus Tomato Mosaic Virus Bean Yellow Mosaic Virus.',
    'Technical Content: Glyphosate.   Mode of Action: Non-Selective post-emergent.  Dosage: 0.8-1 liter/acre (approx. 200 to 250 Liters of water)  ',
    'Paddy. MODE OF ACTION - POST EMERGENT HERBICIDE FOR BROAD LEAVED WEEDS',
    'Powered by the active ingredient Broflanilide. GABA-gated chloride channel allosteric modulators.',
    ' Maize:	Stem borer, Shoo fly ;Mustard :Leaf Miner, Aphid, Thrips, Sawfly; Onion:Thrips; Mango:Hoppers ;Safflower:Aphids',
    'Glycel works by being absorbed into the plant mainly through its leaves but also through soft stalk tissue. It is then transported throughout the plant where it acts on various enzyme systems inhibiting amino acid metabolism known as the shikimic acid pathway needed for plant growth.This pathway with Glycel slowly dies over a period of days or weeks, and because the chemical is transported throughout the plant, no part survives.',
    'Yield- Average yield: 25-40 MT/acre ( depending on season and cultural practice) Size- Round ShapeShape- Flat Round type, uniform green Weight- 80-100g',
    'CROPS - For all fruit and vegetable crops ',
    'CROPS - Rice, Grapes.Mode Of Application: Give the first spray as soon as the incidence of stem borer (appearance of dead hearts) and leaf folder (appearance of white stripes on leaves) starts and 1-2 more sprays depending upon the severity of the incidence.',
    "Choose hole position. Choose and mark the position you wish your plant or fence post to be. Prepare manual post-hole auger.Twist the handle. Remove soil from ground.Remove soil from manual post-hole auger.Repeat",
    "Pressure sprayers are great tools for applying chemicals to your lawn and garden. From fertilizer, to herbicides & fungicides, to insecticides, a sprayer is ideal for year-round landscaping needs.",
    "These hand tools offer a variety of advantages to your farm, including promoting soil health, controlling weeds and improving efficiency. As market gardening becomes increasingly popular, more tools for the small farmer become available.",
     'Hand Weeder Tool is simple to use and versatile.It is used to remove weeds in and around trees, garden lawn edges, vegetable beds etc. The blade is made of spring steel that is hardened and tempered. The short handle pipe are available for adding bamboo or pipe and MS deep orange color Powder coated Pipe for long life.',
    'Power Tiller helps in preparing the soil, sowing seeds, planting seeds, adding & spraying the fertilizers, herbicides & water. In addition to it also helps in pumping water, harvesting, threshing & transporting crops. A power Tiller is ideal where the land side is small',
  'It is used in pushing and pulling mode for removing weeds. Some of the wheel hand hoes have provision for adjusting the handle height to suit people of different statures.',

  ];
  List<int> productPrice = [161, 285, 250, 818, 1785, 203, 1000,880,550,765,2270,880,217,747,15511,4600];
  List<String> productImage = [
    'https://www.agriplexindia.com/cdn/shop/products/Allbor_3.png?v=1677582933',
    'https://cdn.shopify.com/s/files/1/0722/2059/products/51aJXiynUvL._SL1001_800x.jpg?v=1671175432',
    'https://cdn.shopify.com/s/files/1/0722/2059/products/Roundup_800x.jpg?v=1671198559',
    'https://cdn.shopify.com/s/files/1/0722/2059/products/Untitleddesign_3_90562e67-db3c-4382-8bb9-714272f9e18d_1800x1800.jpg?v=1672143987',
    'https://cdn.shopify.com/s/files/1/0722/2059/products/Exponus_1800x1800.jpg?v=1669811651',
    'https://cdn.shopify.com/s/files/1/0722/2059/products/TAFGOR_5b9aea22-edb7-4c04-90d7-729ef2850a7f_1800x1800.jpg?v=1671455569',
    'https://cdn.shopify.com/s/files/1/0722/2059/products/Artboard1copy20-3_800x.webp?v=1673942857',
    'https://cdn.shopify.com/s/files/1/0722/2059/products/Sahoo_1800x1800.jpg?v=1671198625',
    'https://cdn.shopify.com/s/files/1/0722/2059/products/Saaf_1800x1800.webp?v=1680086906',
    'https://cdn.shopify.com/s/files/1/0722/2059/products/Artboard1copy9-2_4_800x.webp?v=1674147810',
    'https://m.media-amazon.com/images/I/51QAAkwlrGL._SL1080_.jpg', 
    'https://cf.organicbazar.net/wp-content/uploads/2021/09/High-Pressure-Garden-Spray-Pump-2-Liter-2-600x600.jpg',
    'https://m.media-amazon.com/images/I/71Ja-BMO4BL._SL1500_.jpg',
    'https://cdn.shopify.com/s/files/1/0722/2059/products/1_e07d1b37-7348-414c-bdd1-9f2c4c84cc17_800x.jpg?v=1679381931',
    'https://cdn.moglix.com/p/UWGy2PUmFZ5fp-large.jpg',
    'https://m.media-amazon.com/images/I/41zD0vLzV+L._SX300_SY300_.jpg',
  ];

  DBHelper? dbHelper = DBHelper();
   @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
  title: Text('Product List'),
  centerTitle: true,
  leading: IconButton(
    icon: BackButtonIcon(),
     onPressed: () { 
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp1()));
                   }, 
  ),
  actions: [
    InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CartScreen()));
      },
      child: Center(
        child: Consumer<CartProvider>(
          builder: (context, value, child) {
            return Stack(
              children: [
                Icon(Icons.shopping_bag_outlined),
                if (value.getCounter() > 0)
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        value.getCounter().toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    ),
    SizedBox(width: 20.0),
  ],
),

      backgroundColor: Colors.green,
      body: Column(
        children: [
         /* ElevatedButton(
             onPressed: () { 
                   Navigator.push(context, MaterialPageRoute(builder: (context) =>  C1 ()));
                   }, 
                 
                child: (
                  Text('submit',style: TextStyle(color: Colors.black),)
                
                ),
                ),*/
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20),
                  itemCount: productName.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: ClipOval(
                              child: Image(
                                image: NetworkImage(
                                    productImage[index].toString()),
                                width: 100,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                              // )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 10),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productUnit[index].toString() +
                                        " " +
                                        r"$" +
                                        productPrice[index].toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: InkWell(
                                      onTap: () {
                                        print(index);
                                        print(index);
                                        print(productName[index].toString());
                                        print(productPrice[index].toString());
                                        print(productPrice[index]);
                                        print('1');
                                        print(productUnit[index].toString());
                                        print(productImage[index].toString());

                                        dbHelper!
                                            .insert(Cart(
                                                id: index,
                                                productId: index.toString(),
                                                productName: productName[index]
                                                    .toString(),
                                                initialPrice:
                                                    productPrice[index],
                                                productPrice:
                                                    productPrice[index],
                                                quantity: 1,
                                                unitTag: productUnit[index]
                                                    .toString(),
                                                image: productImage[index]
                                                    .toString()) as Cart)
                                            .then((value) {
                                          cart.addTotalPrice(double.parse(
                                              productPrice[index].toString()));
                                          cart.addCounter();

                                          final snackBar = SnackBar(
                                            backgroundColor: Colors.green,
                                            content: Text(
                                                'Product is added to cart'),
                                            duration: Duration(seconds: 1),
                                          );

                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        }).onError((error, stackTrace) {
                                          print("error" + error.toString());
                                          final snackBar = SnackBar(
                                              backgroundColor: Colors.red,
                                              content: Text(
                                                  'Product is already added in cart'),
                                              duration: Duration(seconds: 1));

                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        });
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Center(
                                          child: Icon(Icons.shopping_cart, color: Colors.black, size: 30,
              ),
                                        ),
                                      ),

                                    ),
                                  

                                  ),
                                  SizedBox(height: 5),
           Align(
  alignment: Alignment.centerRight,
  child: InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => prduct1(
            image: productImage[index].toString(),
            name: productName[index].toString(),
            price: productPrice[index].toDouble(),
            unit: productUnit[index].toString(),
            a1: d1[index].toString(),
            a2: d2[index].toString(),
            a3: d2[index].toString(),
          ),
        ),
      );
    },
    child: Container(
      height: 35,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Center(
        child: Text(
          'View details',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  ),
),

                        ]
                        )
                        
                        )
                        ]
                        )
                        );
                  }),
            ),

          )
        ],
      ),
    );
  }
}
