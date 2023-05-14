import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePage_2();
}

class HomePage_2 extends State<HomePage> {
  int current_Index = 0;
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(164, 255, 163, 1);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 182, 248, 189),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: ListView.builder(
            itemCount: _cropinfo.length,
            itemBuilder: (BuildContext context, int index) {
              final item = _cropinfo[index];
              return Container(
                height: 136,
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                decoration: BoxDecoration(
                    
                    border: Border.all(
                        color: Color.fromARGB(255, 145, 43, 43)), //border
                    borderRadius: BorderRadius.circular(8.0)),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Text("${item.details}",
                            style: Theme.of(context).textTheme.bodySmall),
                        const SizedBox(height: 8),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "${item.match_percent}",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(item.imageUrl),
                            ))),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Crop {
  final String title;
  final String imageUrl;
  final String details;
  final String match_percent;

  Crop({
    required this.title,
    required this.imageUrl,
    required this.details,
    required this.match_percent,
  });
}

final List<Crop> _cropinfo = [
  Crop(
      title: "Rice",
      imageUrl:
          "https://img.freepik.com/free-photo/white-rice-small-wooden-plate-place-dark-floor_1150-35743.jpg?w=996&t=st=1679946176~exp=1679946776~hmac=475505cb6a1fa9f0d5d0208c4117388e9e8735e60a1de3a30df134486585dff9",
      details:
          "As a cereal grain, domesticated rice is the most widely consumed staple food for over half of the world's human population. ",
      match_percent: "This has matched 98% with your choices."),
  Crop(
      title: "Tomato",
      imageUrl:
          "https://images.pexels.com/photos/1327838/pexels-photo-1327838.jpeg?cs=srgb&dl=pexels-julia-1327838.jpg&fm=jpg",
      details:
          "Tomatoes are a significant source of umami flavor. They are consumed in diverse ways: raw or cooked, and in many dishes, sauces, salads, and drinks.",
      match_percent: "This has matched 95% with your choices."),
  Crop(
      title: "Sugarcane",
      imageUrl:
          "https://img.freepik.com/free-photo/front-view-bamboo-sticks_23-2148817727.jpg?size=626&ext=jpg&ga=GA1.2.427658053.1679945861&semt=sph",
      details:
          "The plants are 2–6 m (6–20 ft) tall with stout, jointed, fibrous stalks that are rich in sucrose",
      match_percent: "This has matched 90% with your choices."),
  Crop(
      title: "Maize",
      imageUrl:
          "https://img.freepik.com/free-photo/seeds-sweet-corn-wooden-table_1150-9483.jpg?w=996&t=st=1679946470~exp=1679947070~hmac=44db7abd41992d97d2450d909595b2205adcbc4be9354da0a7d4c4f49c349ac1",
      details:
          "It is one of the most versatile emerging crops having wider adaptability under varied agro-climatic conditions.",
      match_percent: "This has matched 88% with your choices."),
  Crop(
      title: "Cotton",
      imageUrl:
          "https://img.freepik.com/free-photo/taking-cotton-from-branch-by-farmer_114579-3992.jpg?w=996&t=st=1679946513~exp=1679947113~hmac=541b8a8b8623c832f06d2f7adb1e602237ff435c42f4cefa522b87d331ea0a16",
      details:
          "Cotton is a soft, fluffy staple fiber that grows in a boll, or protective case, around the seeds of the cotton plants ",
      match_percent: "This has matched 85% with your choices."),
  Crop(
      title: "Wheat",
      imageUrl:
          "https://img.freepik.com/free-photo/large-green-rice-field-with-green-rice-plants-rows_181624-28862.jpg?w=996&t=st=1679946554~exp=1679947154~hmac=2db082fe756ef5027f983352e642eb7a43084c21ef6d02a3addb8885132e8d8e",
      details:
          "Wheat is grown on more land area than any other food crop (220.4 million hectares or 545 million acres, 2014). ",
      match_percent: "This has matched 80% with your choices."),
  Crop(
      title: "Millets",
      imageUrl:
          "https://img.freepik.com/free-photo/quinoa-real_1368-9188.jpg?w=996&t=st=1679946590~exp=1679947190~hmac=ce1f7a235019383c44173604873e45e98e2a6f9af819ca06226f3444f23495df",
      details:
          "It is the most widely grown type of millet. It has been grown in Africa and the Indian subcontinent since prehistoric times.",
      match_percent: "This has matched 78% with your choices."),
  Crop(
      title: "Lentils",
      imageUrl:
          "https://img.freepik.com/free-photo/legumes-beans-assortment-different-bowls-light-stone-top-view-healthy-vegan-protein-food_114579-13629.jpg?w=996&t=st=1679946642~exp=1679947242~hmac=001ad384edc9512d1da3574f415642550d11861c1312df2b4db277be40bf2618",
      details:
          "The lentil (Lens culinaris or Lens esculenta) is an edible legume. It is an annual plant known for its lens-shaped seeds. ",
      match_percent: "This has matched 75% with your choices."),
  Crop(
      title: "Jowar",
      imageUrl:
          "https://img.freepik.com/free-photo/heap-millet-seeds-dark-background_1150-38165.jpg?w=996&t=st=1679946675~exp=1679947275~hmac=cc2db914e542f4358a8cf70a655ebeb7624d2b2285a1107bacb21999ace95117",
      details:
          "Jowar is also known as durra, jowari, sorghum, great millet and milo. It is a grass species which is cultivated for its grain.",
      match_percent: "This has matched 70% with your choices."),
  Crop(
      title: "Potato",
      imageUrl:
          "https://img.freepik.com/premium-photo/potatoes-isolated-white_272787-583.jpg?w=740",
      details:
          "The potato is a starchy food, a tuber of the plant Solanum tuberosum and is a root vegetable native to the Americas.",
      match_percent: "This has matched 68% with your choices."),
];
