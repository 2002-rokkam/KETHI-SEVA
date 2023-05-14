import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/customListTile.dart';
import 'package:flutter_application_1/model/article_model.dart';
import 'package:flutter_application_1/services/api_services.dart';

class newsA extends StatefulWidget {
  const newsA({super.key});

  @override
  State<newsA> createState() => _newsAState();
}

class _newsAState extends State<newsA> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: client.getArticle(),
        builder:
            (BuildContext context, AsyncSnapshot<List<ArticleModel>> snapshot) {
          if (snapshot.hasData) {
            List<ArticleModel> articles = <ArticleModel>[];
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) => CustomListTile(articles[index]),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
