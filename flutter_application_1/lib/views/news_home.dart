// import 'package:flutter/material.dart';
// import 'package:kheti_seva/helper/news.dart';
// import 'package:kheti_seva/model/article_model.dart';
// import 'package:kheti_seva/views/article_news.dart';

// class news_home extends StatefulWidget {
//   const news_home({super.key});

//   @override
//   State<news_home> createState() => _news_homeState();
// }

// class _news_homeState extends State<news_home> {
//   List<ArticleModel> articles = <ArticleModel>[];
//   bool _loading = true;
//   @override
//   void initState() {
//     super.initState();
//     getNews();
//   }

//   getNews() async {
//     News newsClass = News();
//     await newsClass.getNews();
//     articles = newsClass.news;
//     setState(() {
//       _loading = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     const primaryColor = Color.fromRGBO(164, 255, 163, 1);

//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 182, 248, 189),
//       appBar: AppBar(
//         title: Image.asset('assets/logo.png', fit: BoxFit.contain, height: 65),
//         backgroundColor: primaryColor,
//       ),
//       body: _loading
//           ? Center(
//               child: Container(
//                 child: CircularProgressIndicator(),
//               ),
//             )
//           : SingleChildScrollView(
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 16),
//                 child: ListView.builder(
//                     itemCount: articles.length,
//                     shrinkWrap: true,
//                     physics: ClampingScrollPhysics(),
//                     itemBuilder: (BuildContext context, int index) {
//                       return BlogTile(
//                         imageuRL: articles[index].urlToImage,
//                         title: articles[index].title,
//                         description: articles[index].description,
//                         url: articles[index].url,
//                       );
//                     }),
//               ),
//             ),
//     );
//   }
// }

// class BlogTile extends StatelessWidget {
//   const BlogTile(
//       {super.key,
//       required this.imageuRL,
//       required this.title,
//       required this.description,
//       required this.url});
//   final String imageuRL, title, description, url;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => ArticleView()));
//       },
//       child: Container(
//         margin: EdgeInsets.only(bottom: 16),
//         child: Column(
//           children: [
//             ClipRRect(
//                 borderRadius: BorderRadius.circular(6),
//                 child: Image.network(imageuRL)),
//             SizedBox(
//               height: 8,
//             ),
//             Text(title,
//                 style: TextStyle(
//                     fontSize: 18,
//                     color: Colors.black87,
//                     fontWeight: FontWeight.w600)),
//             SizedBox(
//               height: 8,
//             ),
//             Text(
//               description,
//               style: TextStyle(
//                 color: Colors.black54,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
